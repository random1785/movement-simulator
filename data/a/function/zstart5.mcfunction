scoreboard players set @a score -250
execute at @r run spreadplayers ~ ~ 1 10 true @a
execute as @a at @s run tp @s ~ ~ ~ 0 0
execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["starter"]}
effect give @a levitation 12 7 true
execute store result score @e[type=armor_stand,tag=centre] random run random value 350..400
execute store result score @e[type=armor_stand,tag=centre] day run random value 1..6
execute as @e[type=armor_stand,tag=centre,scores={random=350..362}] run scoreboard players add @s bonus 2
execute as @e[type=armor_stand,tag=centre,scores={random=363..380}] run scoreboard players add @s bonus 1
execute as @e[type=armor_stand,tag=centre,scores={day=4..6}] run scoreboard players add @s bonus 1
function a:zannouncebonus
function a:zzday
scoreboard players set @e[type=armor_stand,tag=centre] k 1000
scoreboard players set @e[type=armor_stand,tag=centre] speed 2000
scoreboard players set @e[type=armor_stand,tag=centre] speeddec 2000
execute as @e[type=armor_stand,tag=centre] run scoreboard players operation @s speed /= @s random
execute as @e[type=armor_stand,tag=centre] run scoreboard players operation @s speeddec %= @s random
execute as @e[type=armor_stand,tag=centre] run scoreboard players operation @s speeddec *= @s k
execute as @e[type=armor_stand,tag=centre] run scoreboard players operation @s speeddec /= @s random
execute as @e[type=armor_stand,tag=centre] run tellraw @a [{"color":"red","text":"Worldborder speed: "},{"bold":true,"score":{"name":"@s","objective":"speed"}},{"bold":true,"text":"."},{"bold":true,"score":{"name":"@s","objective":"speeddec"}},{"text":" blocks per second."}]
schedule function a:zstart6 250t
tellraw @a {"text":"game has loaded! make sure to face SOUTH!","color":"red"}