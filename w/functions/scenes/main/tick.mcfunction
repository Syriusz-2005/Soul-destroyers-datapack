
effect give @a saturation infinite 1 true

execute in w:warland positioned -193 -13 49 run particle cloud ~ ~ ~ 2 3 2 0 1 normal

#declare tag w.no-fire
execute as @e[tag=w.no-fire] run data modify entity @s Fire set value -2

# Remove empty invisible item frames
execute as @e[type=item_frame,nbt={Invisible:true,Invulnerable:false}] unless entity @s[nbt={Item:{Count:1b}}] run kill @s

#declare tag w.builder
execute as @a[scores={w.left=1..},tag=!w.player,tag=!w.builder] if entity 4b46e8fb-7bb9-4fc1-9014-17b8748f1bc1 run function w:generated/main-menu/0-0
execute as @a[scores={w.left=1..},tag=!w.player,tag=!w.builder] if entity 4b46e8fb-7bb9-4fc1-9014-17b8748f1bc1 run scoreboard players reset @s