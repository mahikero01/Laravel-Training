<?php
class TodoList extends Eloquent{
	public function listItems(){
		return $this->belongsTo('TodoList');
	}
}
