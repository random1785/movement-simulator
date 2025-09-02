function a:zitems
spreadplayers 0 0 1 10000000 false @a
effect give @a resistance 17 255 true
effect give @a blindness 9 255 true
schedule function a:zstart2half 100t
tellraw @a {"text":"game loading... (1/5)","color":"aqua"}