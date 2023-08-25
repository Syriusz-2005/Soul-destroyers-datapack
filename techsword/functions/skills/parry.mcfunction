# Parry fx if just clicked
execute unless score @s techsword.parry_timer matches 1.. run function techsword:vfx/parry
# Add parried effect
scoreboard players set @s techsword.parry_timer 6

# Slowness
effect give @s slowness 1 2 true

# Mark parried enemies
scoreboard players set @s techsword.dist 21
execute anchored eyes run function techsword:utils/ray/parry/ray