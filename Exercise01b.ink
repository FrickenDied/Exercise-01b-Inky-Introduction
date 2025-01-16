 -> beachhead
 
 == beachhead ==
 You stand on the edge of the beach, the waves lap at your feet.
 + [Walk East] -> eastbeach
 + [Walk West] -> westbeach
 
 == westbeach ==
 The west end of the beach is barren, {not hatchetget:there seems to be something in the sand.}
 * [Investigate sand] -> hatchetget
 + [Return] -> beachhead
 
 == hatchetget ==
 You brush the sand away to reveal a hatchet.
 * [Take hatchet] -> westbeach
 
 == eastbeach ==
 The east end of the beach features a cave that is boarded up.
 * {hatchetget} [Break into the cave] -> cavemouth
 + [Return] -> beachhead
 
 == cavemouth ==
 You hack at the wood until there is a big enough opening to slip through, the cave is dark but it looks like you can continue east. {not torchpickup: There is a torch on the floor.}
 * [Pick up Torch] -> torchpickup
 + [Go East] -> eastcave
 
 == torchpickup ==
 You pick up the torch, surely this will help.
 * [Return] -> cavemouth
 
 == eastcave ==
 The east end of the cave is too dark to see anything.
 + [Return] -> cavemouth
 * {torchpickup} [Light Torch] -> eastcavelit
 
 == eastcavelit ==
 The torch illuminates the end of the cave, revealing The Malicious Bear. Oh great heavens!
 -> END
