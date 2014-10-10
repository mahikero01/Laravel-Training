<?php
class TodoItem extends Eloquent{
	public function listItems(){
		return $this->belongsTo('TodoList');
	}
}
