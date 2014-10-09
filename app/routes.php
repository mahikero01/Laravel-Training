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
 * /todos/create - create new list
 */

Route::get('/', 'TodoListController@index');
//Route::get('/todos', 'TodoListController@index');
//Route::get('/todos/{id}', 'TodoListController@show' );

Route::resource('todos', 'TodoListController');