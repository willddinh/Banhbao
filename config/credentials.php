<?php

/*
 * This file is part of Laravel Credentials.
 *
 * (c) Graham Campbell <graham@alt-three.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

return [

    /*
    |--------------------------------------------------------------------------
    | Enable Public Registration
    |--------------------------------------------------------------------------
    |
    | This defines if public registration is allowed.
    |
    | Default to true.
    |
    */

    'regallowed' => true,

    /*
    |--------------------------------------------------------------------------
    | Require Account Activation
    |--------------------------------------------------------------------------
    |
    | This defines if public registration requires email activation.
    |
    | Default to true.
    |
    */

    'activation' => true,

    /*
    |--------------------------------------------------------------------------
    | Revision Model
    |--------------------------------------------------------------------------
    |
    | This defines the revision model to be used.
    |
    | Default: 'GrahamCampbell\Credentials\Models\Revision'
    |
    */

    'revision' => 'GrahamCampbell\Credentials\Models\Revision',

    /*
    |--------------------------------------------------------------------------
    | Home
    |--------------------------------------------------------------------------
    |
    | This defines the location of the homepage.
    |
    | Default to '/'.
    |
    */

    'home' => '/',

    /*
    |--------------------------------------------------------------------------
    | Layout
    |--------------------------------------------------------------------------
    |
    | This defines the layout to extend when building views.
    |
    | Default to 'layouts.default'.
    |
    */

    'layout' => 'layouts.default',

    /*
    |--------------------------------------------------------------------------
    | Email Layout
    |--------------------------------------------------------------------------
    |
    | This defines the layout to extend when building email views.
    |
    | Default to 'layouts.email'.
    |
    */

    'email' => 'layouts.email',
    'default_front_user_role' => 'user'

];
