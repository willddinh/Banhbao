<?php

namespace Fully\Http\Controllers;

use Cartalyst\Sentinel\Checkpoints\NotActivatedException;
use Cartalyst\Sentinel\Checkpoints\ThrottlingException;
use Cartalyst\Sentinel\Laravel\Facades\Activation;
use Input;
use View;
use Flash;
use Redirect;
use Sentinel;
use Mail;
use Log;
use Validator;
use Fully\Models\User;
use Fully\Models\Role;
use Illuminate\Http\Request;
use Fully\Http\Controllers\Controller;

/**
 * Class UserController.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function register()
    {
        

        return view('frontend.user.register');
    }

    public function registerConfirmation(){
        return view('frontend.user.registerConfirmation');
    }
    /**
     * Attempt to register a new user.
     *
     * @return \Illuminate\Http\Response
     */
    //@todo: add throtle feature
    public function postRegister(Request $request)
    {
        try {
            if (!config('credentials.regallowed')) {
                return Redirect::route('account.register');
            }

            $formData = array(
                'first-name' => $request->get('first_name'),
                'last-name' => $request->get('last_name'),
                'email' => $request->get('email'),
                'password' => $request->get('password'),
                'confirm-password' => $request->get('confirm_password'),
//            'roles' => $request->get('roles'),
            );

            $rules = array(
                'first-name' => 'required|min:1',
                'last-name' => 'required|min:1',
                'email' => 'required|email|unique:users,email',
                'password' => 'required|min:6',
                'confirm-password' => 'required|same:password',
            );

            $validation = Validator::make($formData, $rules);

            if ($validation->fails()) {
                return Redirect::action('UserController@register')->withErrors($validation)->withInput();
            }

            if (!config('credentials.activation')) {
                $user = Sentinel::registerAndActivate(array(
                    'email' => $formData['email'],
                    'password' => $formData['password'],
                    'first_name' => $formData['first-name'],
                    'last_name' => $formData['last-name'],
//                'activated' => 1,
                ));


            } else {
                $user = Sentinel::register(array(
                    'email' => $formData['email'],
                    'password' => $formData['password'],
                    'first_name' => $formData['first-name'],
                    'last_name' => $formData['last-name'],
//                'activated' => 1,
                ));
                if($user){
                    $activation = Activation::create($user);
                    $code = $activation->code;
                    $sent = Mail::send('emails.welcome', compact('user', 'code'), function($m) use ($user)
                    {
                        $m->to($user->email)->subject('Activate Your Account');
                    });
                    if ($sent === 0)
                    {
                        Log::critical("can not send mail");
                        return Redirect::to('account.register')
                            ->withErrors('Failed to send activation email.');
                    }
                }


            }
            $role = Sentinel::findRoleByName(config('credentials.default_front_user_role'));
            $role->users()->attach($user);
            if (!config('credentials.activation')) {
                return Redirect::intended();
            } else {
                return Redirect::action('UserController@registerConfirmation');
            }


        } catch (\Exception $ex) {
            Log::critical($ex);
            return Redirect::route('account.register')->withInput()
                ->with('error', 'Error on register.');
        }

    }

    public function login(){
        return View::make('frontend.user.login');
    }

    public function postLogin()
    {
        try
        {
            $input = Input::all();
            $rules = [
                'email'    => 'required|email',
                'password' => 'required',
            ];
            $validator = Validator::make($input, $rules);
            if ($validator->fails())
            {
                return Redirect::back()
                    ->withInput()
                    ->withErrors($validator);
            }
            $remember = (bool) Input::get('remember', false);
            if (Sentinel::authenticate(Input::all(), $remember))
            {
                return Redirect::intended();
            }
            $errors = 'Invalid login or password.';
        }
        catch (NotActivatedException $e)
        {
            $errors = 'Account is not activated!';
            return Redirect::back()
                ->withInput()
                ->withErrors( ['error' =>$errors]);
        }
        catch (ThrottlingException $e)
        {
            $delay = $e->getDelay();
            $errors = "Your account is blocked for {$delay} second(s).";
        }
        return Redirect::back()
            ->withInput()
            ->withErrors(['error' =>$errors]);
    }

}
