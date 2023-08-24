# Parry fx if just clicked
execute unless score @s techsword.parry_timer matches 1.. run function techsword:fx/parry
# Add parried effect
scoreboard players set @s techsword.parry_timer 5

# Slowness
effect give @s slowness 1 1 true

# Mark parried enemies
scoreboard players set @s techsword.dist 17
execute anchored eyes run function techsword:utils/ray/parry/ray