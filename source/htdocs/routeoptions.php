<?php
require('routingrules.php');
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
		$routingrules = new RoutingRules();
		$processed_route = $routingrules->apply_rules($route);
		$total_waypoint_cost = $processed_route->get_total_cost();
		if ( $total_waypoint_cost < $this->lowest_cost ) {
			if (count($this->routes) != 0) {
				array_push($this->routes, $this->optimal_route); // push the previous optimal route onto the stack
			}
			$this->optimal_route = $processed_route;                   
			$this->lowest_cost = $total_waypoint_cost;
		}
		else {
			array_push($this->routes, $processed_route);
		}
	}
	
	public function get_optimal() {
		return $this->optimal_route;
	}

	public function get_lowest_cost() {
		return $this->lowest_cost;
	}

	public function get_alternative_routes() {
		return $this->routes;
	}

	public function get_all_routes() {
		$routes = $this->routes;		
		array_push($routes, $this->optimal_route);						
		return $routes;
	}
}

?>