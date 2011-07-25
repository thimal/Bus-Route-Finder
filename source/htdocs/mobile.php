<?php
require('DBConnection.php');

/******************************************************************************************

	Colombo Bus Route Finder by Janith Leanage (http://janithl.blogspot.com).

	Project started: 27/Jun/11	Code rewritten from scratch: 08/Jul/11

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.

******************************************************************************************/
$DBConnection = new DBConnection();

echo <<< OUT
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bus Route Finder</title>
</head>
<body>
<div><strong>I want to go on a bus from</strong>
<br/>
<form action="query.php" method="get" enctype="text/plain" autocomplete="off">
OUT;

$options = '';

$resultset = $DBConnection->query("SELECT p.pid, p.name FROM place AS p ORDER BY p.name ASC", array());
if($resultset) {
	while ($array = $resultset->fetch())
	$options .= '<option value="'.$array[0].'">'.$array[1].'</option>'."\n";
}
else {
	return false;
}

echo <<< OUT
<label for="f">from</label><select id="f" name="f">
$options
</select><br/>
<label for="t">to</label><select id="t" name="t">
$options
</select>
<input type="hidden" name="v" value="mobile">
<button type="submit">find a bus</button>
</form>
</div>
<br/>
<div>Disclaimer: This service is still in the beta stage, so please use it at your own risk.<br/>
<a href="index.php">Desktop Version</a> ></div>
</body>
</html>
OUT;

?>

