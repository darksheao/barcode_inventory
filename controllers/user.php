<?php 

class User
{
	public $columns = [
		'id' => [
			'type' => 'int',
		],
		'username' => [
			'type' => 'string',
		],
		'email' => [
			'type' => 'string',
		],
		'officeId' => [
			'type' => 'int',
		],
		'active' => [
			'type' => 'bool',
		],
		'permission' => [
			'type' => 'intarray',
		],
	];

	public function __construct($id = false)
	{
		if ($id)
		{
			$this->load($id);
		}
	}

	public function load($id)
	{
		// load user object from userId
	}

	public static function fromSession($sessionId)
	{
		// lookup session table for in date sessions / delete out of date ones, return this load.

	}


}