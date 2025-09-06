function a:zitems
tp @a 11.5 300 -4.5
spreadplayers 0 0 1 10000000 false @a[tag=chosen]
effect give @a resistance 23 255 true
effect give @a levitation 23 0 true
effect give @a blindness 23 255 true
schedule function a:zstart2half 200t
tellraw @a {"text":"game loading... (1/5)","color":"aqua"}