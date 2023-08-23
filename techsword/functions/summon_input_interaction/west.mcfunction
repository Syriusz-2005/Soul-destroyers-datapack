# Initialaise input if player just equiped sword

#execute as @a[tag=techsword] at @s unless entity @e[type=interaction,tag=techsword.input.4,distance=..3] anchored eyes positioned ^ ^ ^ run say summoning new inter

execute as @a[tag=techsword] at @s unless entity @e[type=interaction,tag=techsword.input.4,distance=..3] anchored eyes positioned ^ ^ ^ run summon interaction ~-1 ~-0.5 ~ {Tags:["techsword.input.4"],width:1,height:1}

# Make "input" follow player
execute as @a[tag=techsword] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=interaction,tag=techsword.input.4,limit=1,sort=nearest] ~-1 ~-0.5 ~

# Disable input when player hid sword
execute as @e[type=interaction,tag=techsword.input.4] at @s unless entity @p[tag=techsword,distance=..3] run kill @s