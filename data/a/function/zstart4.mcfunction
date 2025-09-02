execute at @e[type=armor_stand,tag=centre,scores={random=0}] run tp @a ~-625 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=1}] run tp @a ~-500 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=2}] run tp @a ~-375 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=3}] run tp @a ~-250 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=4}] run tp @a ~-125 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=5}] run tp @a ~ 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=6}] run tp @a ~125 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=7}] run tp @a ~250 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=8}] run tp @a ~375 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=9}] run tp @a ~500 785 ~-1950 0 0
execute at @e[type=armor_stand,tag=centre,scores={random=10}] run tp @a ~625 785 ~-1950 0 0
execute as @e[type=armor_stand,tag=centre,scores={random=0..1}] run scoreboard players add @s bonus 2
execute as @e[type=armor_stand,tag=centre,scores={random=9..10}] run scoreboard players add @s bonus 2
execute as @e[type=armor_stand,tag=centre,scores={random=2}] run scoreboard players add @s bonus 1
execute as @e[type=armor_stand,tag=centre,scores={random=8}] run scoreboard players add @s bonus 1
scoreboard players reset @e[type=armor_stand] random
schedule function a:zstart5 60t
tellraw @a {"text":"game loading... (4/5)","color":"gold"}