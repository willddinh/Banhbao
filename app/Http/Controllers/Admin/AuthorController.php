<?php

namespace Fully\Http\Controllers\Admin;

use View;
use Input;
use Flash;
use Fully\Services\Pagination;
use Fully\Http\Controllers\Controller;
use Fully\Repositories\Author\AuthorInterface;
use Fully\Repositories\Author\AuthorRepository as Author;
use Fully\Exceptions\Validation\ValidationException;

class AuthorController extends Controller
{
    protected $author;
    protected $perPage;

    public function __construct(AuthorInterface $author)
    {
        $this->author = $author;
        $this->perPage = config('fully.per_page');
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $pagiData = $this->author->paginate(Input::get('page', 1), $this->perPage, true);
        $authors = Pagination::makeLengthAware($pagiData->items, $pagiData->totalItems, $this->perPage);

        return view('backend.author.index', compact('authors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('backend.author.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        try {
            $this->author->create(Input::all());
            Flash::message('Author was successfully added');

            return langRedirectRoute('admin.author.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.author.create')->withInput()->withErrors($e->getErrors());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $author = $this->author->find($id);

        return view('backend.author.show', compact('author'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $author = $this->author->find($id);

        return view('backend.author.edit', compact('author'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function update($id)
    {
        try {
            $this->author->update($id, Input::all());
            Flash::message('Author was successfully updated');

            return langRedirectRoute('admin.author.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.author.edit')->withInput()->withErrors($e->getErrors());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $this->author->delete($id);
        Flash::message('Author was successfully deleted');

        return langRedirectRoute('admin.author.index');
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function confirmDestroy($id)
    {
        $author = $this->author->find($id);

        return view('backend.author.confirm-destroy', compact('author'));
    }
}
