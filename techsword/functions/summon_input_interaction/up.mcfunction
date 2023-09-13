# Initialaise input if player just equiped sword

#execute as @a[tag=techsword] at @s unless entity @e[type=interaction,tag=techsword.input.5,distance=..3] anchored eyes positioned ^ ^ ^ run say summoning new inter

execute as @a[tag=techsword] at @s unless entity @e[type=interaction,tag=techsword.input.5,distance=..3] anchored eyes positioned ^ ^ ^ run summon interaction ~ ~0.5 ~ {Tags:["techsword.input.5"],width:1,height:1,Invulnerable:true}

# Make "input" follow player
execute as @a[tag=techsword] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=interaction,tag=techsword.input.5,limit=1,sort=nearest] ~ ~0.5 ~

# Disable input when player hid sword
execute as @e[type=interaction,tag=techsword.input.5] at @s unless entity @p[tag=techsword,distance=..3] run kill @s