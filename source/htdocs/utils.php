<?php
/******************************************************************************************
	
	Colombo Bus Route Finder by Janith Leanage (http://janithl.blogspot.com).
	Project started: 27/Jun/11	Code rewritten from scratch: 08/Jul/11

	Refactoring and some features: TJ, 7/22/2011
	See license.txt for license
	
******************************************************************************************/

class Utils {
	public static function compute_distance($lat1, $long1, $lat2, $long2) {
		/* TODO: Make absolutely sure licensing is ok. PHP port of JavaScript answer found here: http://stackoverflow.com/questions/27928/how-do-i-calculate-distance-between-two-latitude-longitude-points/27943#27943
		Also see: 
			http://www.phpclasses.org/browse/file/10671.html (gPoint)
			http://www.planetsourcecode.com/vb/scripts/ShowCode.asp?txtCodeId=46&lngWId=8
		*/
		$radius      = 6369.783552;      // Earth's radius (km)
	    $pi          = 3.1415926;
		$deg_per_rad = 57.29578;  

	    $distance = ($radius * $pi * sqrt(
                ($lat1 - $lat2)
                * ($lat1 - $lat2)
                + cos($lat1 / $deg_per_rad)  // Convert these to
                * cos($lat2 / $deg_per_rad)  // radians for cos()
                * ($long1 - $long2)
                * ($long1 - $long2)
        ) / 180);
		return $distance;  
	}
	
	public static function parse_geo($location_string) {
	// used to parse and chunk the geolocation format stored in the database.
	// FIXME: Always returns the first available latlong pair

		$elements = explode("|", $location_string);
		return explode(",", $elements[0]);
	}
}