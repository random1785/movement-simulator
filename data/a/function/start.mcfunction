difficulty easy
time set 0
gamemode survival @a
team join a @a
tag @a remove b
scoreboard players reset *
scoreboard players set @a score 10
title @a times 10 0 10
clear @a
kill @a
kill @e[type=armor_stand]
worldborder damage amount 0.0000000000001
worldborder damage buffer 50
execute as @a at @s run playsound minecraft:block.trial_spawner.ominous_activate
title @a title {"text":"game starting!","color":"green"}
schedule function a:zstart2 5t
forceload remove all