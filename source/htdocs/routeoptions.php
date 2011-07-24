<?php
/******************************************************************************************
	
	Colombo Bus Route Finder by Janith Leanage (http://janithl.blogspot.com).
	Project started: 27/Jun/11	Code rewritten from scratch: 08/Jul/11

	Refactoring and some features: TJ, 7/22/2011
	See license.txt for license
	
******************************************************************************************/

class RouteOptions {
	private $routes;
	private $optimal_route;
	private $lowest_cost;

	public function __construct() {
		$this->routes = array();
		$this->lowest_cost = 10000; // set to impossibly high value
	}
	
	public function add($route) {
		array_push($this->routes, $route);
		$total_waypoint_cost = $route->get_total_cost();
		if ( $total_waypoint_cost < $this->lowest_cost) {
			$this->optimal_route = $route;
			$this->lowest_cost = $total_waypoint_cost;
		}
	}

	public function get_optimal() {
		return $this->optimal_route;
	}

	public function get_lowest_cost() {
		return $this->lowest_cost;
	}

	public function get_changeover_count() {
		return count($this->routes) - 1; // counts changeovers only, no start -> destination leg 
	}
}

?>