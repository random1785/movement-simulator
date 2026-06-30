execute as @a[scores={death=1}] at @s run playsound minecraft:ui.toast.challenge_complete
execute store result score @r surv run execute if entity @a[scores={death=1}]
execute as @a[scores={death=1}] run tellraw @a [{"color":"gold","selector":"@s"},{"text":" survived!"}]
execute unless entity @a[scores={surv=1..}] run tellraw @a {"color":"dark_red","text":"nobody survived :("}
schedule function a:zend4 3s