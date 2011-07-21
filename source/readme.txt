This is a simple database, with bus routes, places (bus halts) and the directions in which the buses were travelling in (critical for accuracy in Colombo's one way system) and a PHP based front end that simply told you to take bus X from A to C and then bus Y from C to B or (if you were lucky) bus Z that got you to B from A direct. Please excuse the n00b coding, I'm new to this!
 
Database schema for the system:
 
bus(bus id, route number, from, to)
place(place id, name, area { north, south, central, coast, outside }, Google Maps coordinates, description for Google Map)
stop(bus id, place id, stop number)
 
You enter two locations (from - A and to - B) and the system first sees if it can get you from A to B using one bus, by running a simple nested query. It checks if the bus is running in the right direction (i.e. the stop number of B is greater than A) and gives you the result. This is stage 1. If this fails, the system tries to find a bus running from A to a changeover location C, and then another bus from that changeover location to B. These changeover locations are pretty well known, and are hard-coded into the PHP script. This is stage 2, failing which the system attempts to find 3 buses (stage 3) to get you from A to C, C to D, and D to B, where both C and D are changeover locations. If, in stages 2 or 3, multiple combinations of buses are returned, the system chooses the bus combination with the lowest combined number of stops (i.e. the quickest path).

This software is released under the GNU GPL. Please feel free to modify, distribute, and host as much as you like. :)
