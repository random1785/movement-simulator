scoreboard players add @a[scores={death=1}] score 1
execute as @a[scores={death=2},tag=!b] run tellraw @a [{"color":"red","selector":"@s"},{"text":" died "},{"score":{"name":"@s","objective":"forward"}},{"text":" blocks out."}]
gamemode spectator @a[scores={death=2},tag=!b]
tag @a[scores={death=2},tag=!b] add b

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
execute as @a[scores={offset=0..},tag=!a] run title @s actionbar [{"score":{"name":"@s","objective":"forward"}},{"text":"  ↑     "},{"score":{"name":"@s","objective":"offset"}},{"text":" →"}]
execute as @a[scores={offset=..0}] run function a:zcorrection