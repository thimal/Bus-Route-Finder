<?php
require('waypoint.php');
/******************************************************************************************
	
	Colombo Bus Route Finder by Janith Leanage (http://janithl.blogspot.com).
	Project started: 27/Jun/11	Code rewritten from scratch: 08/Jul/11

	Refactoring and some features: TJ, 7/22/2011
	See license.txt for license

	Notes: 
	7/26/2011: to maintain compatibility, hop count is considered equivalent to the path cost.
	However, these two concepts are explicitly stored separately so weight can be influenced
	by other factors and signals later.
	
******************************************************************************************/

class Route {
	private $start;
	private $destination;
	private $waypoints = array();	
	
	public function __construct() {
	}
		
	public function set_start($value) {
		$this->start = $value;
	}
	
	public function set_destination($value) {
		$this->destination = $value;
	}	

	public function push_waypoint($start, $destination, $bus_id, $hop_count) {
		$waypoint = new Waypoint();
		$waypoint->start = $start;
		$waypoint->destination = $destination;
		$waypoint->bus = $bus_id;
		$waypoint->hops = $hop_count;
		$waypoint->weight = $hop_count;
		$waypoint->order = count($this->waypoints) + 1;
		array_push($this->waypoints, $waypoint);
	}

	public function get_total_cost() {
		return array_reduce($this->waypoints, "route::csum");
	}
	
	private static function csum($v, $w) {
		$v += $w->weight;
		return $v;
	}

	public function get_waypoints() {
		return $this->waypoints;
	}
}
?>