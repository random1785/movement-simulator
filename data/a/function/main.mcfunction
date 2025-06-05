team modify a friendlyFire false
team modify a collisionRule never
scoreboard players reset *
gamerule doImmediateRespawn true
gamerule announceAdvancements false
gamerule spawnRadius 2
gamerule doDaylightCycle false
gamerule doWeatherCycle false
weather clear
difficulty easy
time set 0
team add a
team modify a friendlyFire false
team modify a collisionRule pushOwnTeam
scoreboard objectives add forward dummy
scoreboard objectives add offset dummy
scoreboard objectives add random dummy
scoreboard objectives add score dummy
scoreboard objectives add negative dummy
scoreboard objectives add speed dummy
scoreboard objectives add speeddec dummy
scoreboard objectives add k dummy
scoreboard objectives add bonus dummy
scoreboard objectives add day dummy
scoreboard objectives add death deathCount
tellraw @a {"text":"Movement simulator has been loaded! Use /function a:start to begin!","color":"aqua"}
tellraw @a {"text":"Please keep in mind that this datapack uses custom world generation. For this to take effect, you must delete all world files and regenerate the world with this datapack in the datapack folder.","color":"blue"}