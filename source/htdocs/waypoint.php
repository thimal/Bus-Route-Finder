<?php

class Waypoint {
	private $_allowed_keys = array("start" => 1, "destination" => 1, "weight" => 1, "hops" => 1, "bus" => 1, 
			"start_geo" => 1, "dest_geo" => 1, "distance" => 1, "order" => 1);
	private $_data;

	public function __construct() {
		$this->_data = array();
	}

	public function __get($name) {
		if (isset($this->_data[$name])) {
			return $this->_data[$name];
		}
		return false;
	}

	public function __isset($name) {
		return isset($this->_data[$name]);
	}

	public function ___set($name, $value) {
		die();
		 echo "Setting '$name' to '$value'\n";
		if (isset($this->_allowed_keys[$name])) {
			$this->_data[$name] = $value;
		}
		return false;
	}
}
?>