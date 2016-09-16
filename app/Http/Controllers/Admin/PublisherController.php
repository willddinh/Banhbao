<?php

namespace Fully\Http\Controllers\Admin;

use View;
use Input;
use Flash;
use Fully\Services\Pagination;
use Fully\Http\Controllers\Controller;
use Fully\Repositories\Publisher\PublisherInterface;
use Fully\Repositories\Publisher\PublisherRepository as Publisher;
use Fully\Exceptions\Validation\ValidationException;

class PublisherController extends Controller
{
    protected $publisher;
    protected $perPage;

    public function __construct(PublisherInterface $publisher)
    {
        $this->publisher = $publisher;
        $this->perPage = config('fully.per_page');
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $pagiData = $this->publisher->paginate(Input::get('page', 1), $this->perPage, true);
        $publishers = Pagination::makeLengthAware($pagiData->items, $pagiData->totalItems, $this->perPage);

        return view('backend.publisher.index', compact('publishers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('backend.publisher.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        try {
            $this->publisher->create(Input::all());
            Flash::message('Publisher was successfully added');

            return langRedirectRoute('admin.publisher.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.publisher.create')->withInput()->withErrors($e->getErrors());
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
        $publisher = $this->publisher->find($id);

        return view('backend.publisher.show', compact('publisher'));
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
        $publisher = $this->publisher->find($id);

        return view('backend.publisher.edit', compact('publisher'));
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
            $this->publisher->update($id, Input::all());
            Flash::message('Publisher was successfully updated');

            return langRedirectRoute('admin.publisher.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.publisher.edit')->withInput()->withErrors($e->getErrors());
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
        $this->publisher->delete($id);
        Flash::message('Publisher was successfully deleted');

        return langRedirectRoute('admin.publisher.index');
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function confirmDestroy($id)
    {
        $publisher = $this->publisher->find($id);

        return view('backend.publisher.confirm-destroy', compact('publisher'));
    }
}
