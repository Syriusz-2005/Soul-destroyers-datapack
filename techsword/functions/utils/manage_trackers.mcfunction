# Initialaise tracker if player just equiped sword
execute as @a[tag=techsword] positioned as @s unless entity @e[type=marker,tag=techsword.tracker,distance=..3] run summon marker ~ ~ ~ {Tags:["techsword.tracker"]}

# Make tracker follow player
execute as @a[tag=techsword] positioned as @s facing entity @e[type=marker,tag=techsword.tracker,limit=1,sort=nearest,distance=0.25..3] feet as @e[type=marker,tag=techsword.tracker,limit=1,sort=nearest,distance=0.25..3] run tp @s ^ ^ ^0.25

# Disable tracker when player hid sword or teleported
execute as @e[type=marker,tag=techsword.tracker] positioned as @s unless entity @p[tag=techsword,distance=..3] run kill @s