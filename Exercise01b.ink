/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
* {torch_pickup} [Light Torch] -> west_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of the torch illuminates the vast treasures of this room.
-> END

== west_tunnel_lit ==
The light of the torch illuminates 3 further passages spreading north, south, and further west. {book_taken:the book is beckoning to you.}
+ [Go North] -> north_tunnel
+ [Go West] -> further_west_tunnel
+ [Go South] -> south_tunnel
* {book_taken} [Open the book] -> vanished
-> END

== south_tunnel ==
There is a dead-end
+ [Go Back] -> west_tunnel_lit

== further_west_tunnel
You trip and fall down a pit and die, womp womp.
-> END

== north_tunnel ==
The north tunnel winds around and narrows, you reach the end and find a skeleton {not book_taken:loosely protecting a worn book}.
* [Take the book] -> book_taken
+ [Go Back] -> west_tunnel_lit

== book_taken ==
You gently remove the book from underneath the skeleton's arms, as you do it slumps over and falls apart.
* [Go Back] -> north_tunnel

== vanished ==
You open the book to find the pages are completely blank. You flip through the pages to see if there is anything but it yields no results. Tossing the book aside, you focus in on it as it begins to shine brightly. The light grows blinding and you can hear the sound of pages turning intensify. All of the sudden, all goes dark.
-> END