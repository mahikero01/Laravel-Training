@extends('layouts.main')
@section('content')
	<div class="large-12 colums">
		<h2>{{{ $list->name }}} </h2>
		<p>{{ link_to_route('todos.index', 'back') }}</p>
	</div>	
@stop