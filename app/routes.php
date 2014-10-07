<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

/*
 * / = home
 * /todos - all list
 * /todos/1 - show
 * /todos/1/edit - edt and update
 */

Route::get('/', function()
{
	return View::make('todos/index');
});

Route::get('/todos', function()
{
	return View::make('todos/index');
});

Route::get('/todos/{id}', function($id)
{
	return View::make('todos.show')->withId($id);
});