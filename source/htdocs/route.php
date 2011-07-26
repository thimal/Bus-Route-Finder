<?php

/******************************************************************************************
	
	Colombo Bus Route Finder by Janith Leanage (http://janithl.blogspot.com).
	Project started: 27/Jun/11	Code rewritten from scratch: 08/Jul/11

	Refactoring and some features: TJ, 7/22/2011
	See license.txt for license

	Notes: 
	7/26/2011: to maintain compatibility, hop count is considered equivalent to the path cost.
	However, these two concepts are explicitly stored separately so weight can be influenced
	by other factors and signals at a later date.
	
******************************************************************************************/

class Route {
	private $start;
	private $destination;
	private $waypoints = array();
	private $waypoint_order = array();
	private $bus_order = array();
	private $waypoint_weight = array(); // at least initially, assume weight = path cost in hops
	
	public function __construct() {
	}
		
	public function set_start($value) {
		$this->start = $value;
	}
	
	public function set_destination($value) {
		$this->destination = $value;
	}	

	public function push_waypoint($place_id, $bus_id, $cost) {
		$this->waypoints[$place_id] = $cost;		
		$this->waypoint_weight[$place_id] = $cost;
		array_unshift($this->waypoint_order, $place_id);
		array_unshift($this->bus_order, $bus_id);		
	}

	public function get_total_cost() {
		return array_sum(array_values($this->waypoint_weight));
	}

	public function get_waypoints() {
		return $this->waypoint_order;
	}
}
?>