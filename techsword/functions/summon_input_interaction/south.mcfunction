# Initialaise input if player just equiped sword

#execute as @a[tag=techsword] at @s unless entity @e[type=interaction,tag=techsword.input.2,distance=..3] anchored eyes positioned ^ ^ ^ run say summoning new inter

execute as @a[tag=techsword] at @s unless entity @e[type=interaction,tag=techsword.input.2,distance=..3] anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-0.5 ~1 {Tags:["techsword.input.2"],width:1,height:1}

# Make "input" follow player
execute as @a[tag=techsword] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=interaction,tag=techsword.input.2,limit=1,sort=nearest] ~ ~-0.5 ~1

# Disable input when player hid sword
execute as @e[type=interaction,tag=techsword.input.2] at @s unless entity @p[tag=techsword,distance=..3] run kill @s