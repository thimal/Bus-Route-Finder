<?php

/******************************************************************************************
	
	Colombo Bus Route Finder by Janith Leanage (http://janithl.blogspot.com).
	Project started: 27/Jun/11	Code rewritten from scratch: 08/Jul/11

	Refactoring and some features: TJ, 7/22/2011
	See license.txt for license
	
******************************************************************************************/

class DBConnection {
	private $db;
	
	/* db connection properties = EDIT HERE */
    private $dbhost = "localhost";
    private $dbname = "bus";
    private $dbuser = "root";
    private $dbpwd = '';

	private $query_counter = 0; // statistics
	
	public function __construct($conn = true) {
		if ($conn) {
			$this->connect();
	    }
	}


	function connect() {
		$dsn = "mysql:host=" . $this->dbhost . ";dbname=" . $this->dbname;
	    try {
			$this->db = new PDO($dsn, $this->dbuser, $this->dbpwd);
		
		} catch (PDOException $e) {
			print "Database connection failed: " . $e->getMessage() . "<br/>";
		    die();    
		}
	}

	function query($sql, $params) {		
		$this->query_counter++;
		$statement = $this->db->prepare($sql);
	    $result = $statement->execute($params);
		return $result? $statement:$result;
	}

	function get_querycount() {
		return $this->query_counter;   
	}
}

?>