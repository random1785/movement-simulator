execute as @a[scores={offset=..0}] run tag @a add a
execute as @a[scores={offset=..0},tag=a] run scoreboard players operation @s offset *= @s negative
execute as @a[tag=a] run title @s actionbar [{"score":{"name":"@s","objective":"forward"}},{"text":"  ↑     "},{"score":{"name":"@s","objective":"offset"}},{"text":" ←"}]
tag @a remove a