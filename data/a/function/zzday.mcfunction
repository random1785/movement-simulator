execute as @e[type=armor_stand,tag=centre,scores={day=1}] run time set 23750
execute as @e[type=armor_stand,tag=centre,scores={day=1}] run tellraw @a [{"color":"aqua","text":"Time of day: "},{"color":"yellow","bold":true,"text":"sunrise."}]
execute as @e[type=armor_stand,tag=centre,scores={day=2}] run time set noon
execute as @e[type=armor_stand,tag=centre,scores={day=2}] run tellraw @a [{"color":"aqua","text":"Time of day: "},{"bold":true,"text":"noon."}]
execute as @e[type=armor_stand,tag=centre,scores={day=3}] run time set 12500
execute as @e[type=armor_stand,tag=centre,scores={day=3}] run tellraw @a [{"color":"aqua","text":"Time of day: "},{"color":"gold","bold":true,"text":"sunset."}] 
execute as @e[type=armor_stand,tag=centre,scores={day=4}] run time set midnight
execute as @e[type=armor_stand,tag=centre,scores={day=4}] run tellraw @a [{"color":"aqua","text":"Time of day: "},{"color":"black","bold":true,"text":"midnight."}] 
execute as @e[type=armor_stand,tag=centre,scores={day=5}] run time set 13500
execute as @e[type=armor_stand,tag=centre,scores={day=5}] run tellraw @a [{"color":"aqua","text":"Time of day: "},{"color":"dark_red","bold":true,"text":"dusk."}] 
execute as @e[type=armor_stand,tag=centre,scores={day=6}] run time set 22500
execute as @e[type=armor_stand,tag=centre,scores={day=6}] run tellraw @a [{"color":"aqua","text":"Time of day: "},{"color":"gray","bold":true,"text":"dawn."}] 