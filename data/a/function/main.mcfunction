team modify a friendlyFire false
team modify a collisionRule pushOwnTeam
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


# create spawn platform
schedule function a:zzzspawn 5t
execute in the_nether run forceload add -13 -14 25 24
place template a:lobbyoverworld1 -12 295 -14
setworldspawn 0 302 0
spawnpoint @a 0 302 0
tp @a 0 302 0
gamemode survival @a
forceload add -1 -1 0 0
worldborder center 0 0
worldborder set 59999968

kill @e[type=armor_stand]
forceload remove all

schedule clear a:zzzspawnpoint