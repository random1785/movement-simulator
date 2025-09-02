scoreboard players set @a random 1
scoreboard players set @a negative -1
execute store result score @e[type=armor_stand,tag=centre] random run random value 0..10
execute at @e[type=armor_stand,tag=centre] run worldborder center ~ ~
worldborder set 4000
schedule function a:zstart4 11t
tellraw @a {"text":"game loading... (3/5)","color":"yellow"}