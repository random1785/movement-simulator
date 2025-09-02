execute as @a[scores={death=1}] at @s run playsound minecraft:ui.toast.challenge_complete
execute as @a[scores={death=1}] run tellraw @a [{"color":"gold","selector":"@s"},{"text":" survived!"}]