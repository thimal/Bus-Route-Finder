<?php

class DBUtils {

public static function compute_alternatives ($dbh, $RouteOptions) {	
	foreach ($RouteOptions->get_alternative_routes() as $route) {
		$waypoints = $route->get_waypoints();
		foreach ($waypoints as $waypoint) {
			$busDetails = DBUtils::busDet($dbh, $waypoint->bus);
			print DBUtils::place($dbh, $waypoint->start) . " to " .  DBUtils::place($dbh, $waypoint->destination) . " in {$waypoint->hops} hops in bus $busDetails[1] from $busDetails[2] to $busDetails[3]";
			print "<br />";
		}
		print " <br /> ===================== <br />";
	}
}

// Returns halt number of a halt

public static function haltNo($dbh, $bid, $pid) {	
	
	$resultset = $dbh->query("select bid, pid, stopNo from stop as s where s.pid = :placeid and s.bid = :busid", 
			array(':placeid' => $pid, ':busid' => $bid));

	if($resultset) {
		$halt = $resultset->fetch();
		return $halt[2];
	}
	else {
		return false;
	}
}	

// Returns place name when given place id

public static function place($dbh, $pid) {

	$resultset = $dbh->query("SELECT pid, name, area, loc, description FROM place AS p WHERE p.pid = :placeid", array(':placeid' => $pid));

	if($resultset) {
		$place_details = $resultset->fetch();
		return $place_details[1];
	}
	else {
		return false;
	}
}

// Returns all details on any busID

public static function busDet($dbh, $busid) {

	$resultset = $dbh->query("SELECT busid, routeno, from_loc, to_loc FROM bus AS b WHERE b.busid = :busid", array(':busid' => $busid));

	if($resultset) {
		return $resultset->fetch();
	}
	else {
		return false;
	}
}

// Function to find a bus link from location A to 
// location B (a bus that travels in the correct direction)
	
public static function findLink($dbh, $from, $to) {
	
	$resultset = $dbh->query("SELECT bid, pid, stopNo FROM stop AS s1 WHERE s1.pid = :to AND s1.bid IN ( SELECT s2.bid FROM stop AS s2 WHERE s2.pid = :from AND s2.stopNo < s1.stopNo )", array(':to' => $to, ':from' => $from));

	if($resultset) {
		return $resultset->fetch();
	}
	else {
		return false;
	}
}

// Geolocation using Google Maps

public static function geolocate($dbh, $place, $unformatted = false) {
	
	$resultset = $dbh->query("SELECT p.loc, p.description FROM place AS p WHERE p.pid = :place AND p.loc IS NOT NULL", array(':place' => $place));

	if($resultset) {
		$gloc = $resultset->fetch();
		
		if ($unformatted) {
			return $gloc[0];
		}

		return '<a class="gmap" title="'.$gloc[1].'" href="http://maps.google.com/maps/api/staticmap?size=320x320&markers=size:mid|color:blue|'.$gloc[0].'|&mobile=true&sensor=false"><img src="img/geo.png" id="geo"/></a>';
	}
	else {
		return '';
	}
}

}

?>