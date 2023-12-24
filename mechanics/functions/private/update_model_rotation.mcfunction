
execute as @e[tag=aj.rig_root,sort=nearest,limit=1,distance=..5] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

execute unless entity @e[tag=aj.rig_root,sort=nearest,limit=1,distance=..5] run tellraw @s {"text": "Couldn't find the model in 5 block radius to update it's rotation...", "color": "red"}
execute as @e[tag=aj.rig_root,sort=nearest,limit=1,distance=..5] run say My rotation has been updated!