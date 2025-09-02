execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] resistance 1 254 true
execute positioned 22.41 309.99 0.39 run effect give @a[distance=..10] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] resistance 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] mining_fatigue 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tp @e[type=enderman,distance=..60,tag=!end] ~ 0 ~
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tag @e[type=enderman,distance=..60,tag=!end] add end




scoreboard players add @a[scores={death=1}] score 1
gamemode spectator @a[scores={death=2},tag=!b]
execute as @a[scores={death=2},tag=!b] run function a:zzzpy

title @a[scores={score=-200}] title {"text":"10","color":"green"}
title @a[scores={score=-180}] title {"text":"9","color":"green"}
title @a[scores={score=-160}] title {"text":"8","color":"green"}
title @a[scores={score=-140}] title {"text":"7","color":"green"}
title @a[scores={score=-120}] title {"text":"6","color":"green"}
title @a[scores={score=-100}] title {"text":"5","color":"yellow"}
title @a[scores={score=-80}] title {"text":"4","color":"yellow"}
title @a[scores={score=-60}] title {"text":"3","color":"gold"}
title @a[scores={score=-40}] title {"text":"2","color":"red"}
title @a[scores={score=-20}] title {"text":"1","color":"red"}
title @a[scores={score=0}] title {"text":"GO!","color":"dark_red"}

execute as @a[scores={score=-200}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=-180}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=-160}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=-140}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=-120}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=-100}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=-80}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=-60}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=-40}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=-20}] at @s run playsound minecraft:block.note_block.bass player @s
execute as @a[scores={score=1}] at @s run playsound minecraft:entity.ender_dragon.growl player @s

execute as @e[type=minecraft:armor_stand] run execute store result score @s forward run data get entity @s Pos[2]
execute as @a run execute store result score @s forward run data get entity @s Pos[2]
execute as @a run scoreboard players operation @s forward -= @e[type=minecraft:armor_stand,tag=centre,limit=1] forward
execute as @a run scoreboard players operation @s forward *= @s negative
execute as @e[type=minecraft:armor_stand] run execute store result score @s offset run data get entity @s Pos[0]
execute as @a run execute store result score @s offset run data get entity @s Pos[0]
execute as @a run scoreboard players operation @s offset -= @e[type=minecraft:armor_stand,tag=centre,limit=1] offset
execute as @a run scoreboard players operation @s noffset = @s offset
scoreboard players operation @a noffset *= @s negative
execute as @a[scores={offset=0..}] run title @s actionbar [{"score":{"name":"@s","objective":"forward"}},{"text":"  ↑     "},{"score":{"name":"@s","objective":"offset"}},{"text":" →"}]
execute as @a[scores={offset=..0}] run title @s actionbar [{"score":{"name":"@s","objective":"forward"}},{"text":"  ↑     "},{"score":{"name":"@s","objective":"offset"}},{"text":" ←"}]