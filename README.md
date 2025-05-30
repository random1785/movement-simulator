# movement-simulator
Minecraft Datapack for 1.21-1.21.5 (earlier versions may break due to Minecraft changing the NBT tags for naming) that spawns you into a random location in your world and has a worldborder chasing you!
### Important note:
This datapack uses custom world generation. Specifically, it removes all water (as boating is boring) and replaces them with other biomes. To use this datapack, the world files must be completely wiped or a new world must be created with this datapack in the datapacks folder.

## Features:
Spawns you 2000 blocks away from a certain target location with an offset of up to 700 blocks. <br>
The player is told the direction towards the centre of the border in terms of blocks forward and blocks to the right or left. <br>
The worldborder's speed is random and ranges from somewhere around 5 to 5.7 blocks per second. <br>
The time of day is also random (between 6 different times, with 3 being hostile mob spawn-able and 3 not). <br>
Players are given a set of tools, a pearl, a golden carrot, some bread, and blocks to aid in their travel. <br>
As some rounds are harder than others, bonuses are given based off of a few difficulty parameters. For example, nighttime grants 1 bonus, a large offset grants up to 2 bonuses, and a faster worldborder speed can grant up to 2 bonuses. <br>
Bonuses include better food, a speed potion, an extra pearl, and general upgrades (enchanted netherite tools and shears, more blocks, and feather falling boots).


## More technical stuff that is mostly for myself:
Players are floated above spawn to let them get a good look at their surroundings. They can technically pearl during this range, and I think this is fair game. <br>
The border starts damaging players when they are 50 blocks away from the front of the border and damages half a heart, no matter the range the player is from the front of the border. When the player dies, their distance in blocks from the target block is shown in chat. <br>
When the border is just 20 blocks wide, it closes at a much slower rate to allow players to orient themselves onto the correct final block and for stragglers to quickly make it in. The border will finally close onto one specific block, ending the round and displaying in chat everyone who survived. <br>
The datapack should theoretically be multiplayer compatible, but I have not tested this.

## Bugs and todo:
Write more information on what to do to start the round + what to do when the round ends
