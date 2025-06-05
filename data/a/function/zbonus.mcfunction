execute store result score @e[type=armor_stand,tag=centre,tag=!u,tag=!f] k run random value 1..4
execute store result score @e[type=armor_stand,tag=centre,tag=!u,tag=f] k run random value 1..3
execute store result score @e[type=armor_stand,tag=centre,tag=u,tag=f] k run random value 2..3
execute store result score @e[type=armor_stand,tag=centre,tag=u,tag=!f] k run random value 2..4
execute as @e[type=armor_stand,tag=centre] run scoreboard players remove @s bonus 1 
execute as @a at @s run playsound minecraft:block.note_block.pling
execute as @e[type=armor_stand,tag=centre,scores={k=1}] run tellraw @a {"color":"green","text":"bonus recieved: upgrades!"}
execute as @e[type=armor_stand,tag=centre,scores={k=1}] run function a:zzupgrades
execute as @e[type=armor_stand,tag=centre,scores={k=1}] run tag @s add u
execute as @e[type=armor_stand,tag=centre,scores={k=2}] run tellraw @a {"color":"aqua","text":"bonus recieved: speed potion!"}
execute as @e[type=armor_stand,tag=centre,scores={k=2}] run function a:zzspeed
execute as @e[type=armor_stand,tag=centre,scores={k=3}] run tellraw @a {"color":"blue","text":"bonus recieved: pearl!"}
execute as @e[type=armor_stand,tag=centre,scores={k=3}] run function a:zzpearl
execute as @e[type=armor_stand,tag=centre,scores={k=4}] run tellraw @a {"color":"yellow","text":"bonus recieved: food!"}
execute as @e[type=armor_stand,tag=centre,scores={k=4}] run function a:zzfood
execute as @e[type=armor_stand,tag=centre,scores={k=4}] run tag @s add f
execute as @e[type=armor_stand,tag=centre,scores={bonus=1..}] run schedule function a:zbonus 20t