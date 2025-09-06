execute at @a[tag=chosen] run summon armor_stand ~0.5 ~100 ~0.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["centre"]}
execute at @e[type=armor_stand,tag=centre] run forceload add ~ ~
execute at @e[type=armor_stand,tag=centre] run setworldspawn ~ ~ ~
schedule function a:zstart3 40t
tellraw @a {"text":"game loading... (2/5)","color":"green"}