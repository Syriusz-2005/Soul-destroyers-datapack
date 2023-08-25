# Add parried tag
#define tag techsword.effects.parried Tag of entity with "parried" effect
execute if entity @s[tag=!techsword.effects.parried] run attribute @s generic.attack_damage modifier add deadbabe-2137-4387-bf37-b8b68f333f71 "techsword.parried" -0.69 multiply
execute if entity @s[tag=!techsword.effects.parried] run tag @s add techsword.effects.parried

scoreboard players remove @s techsword.effects.parried 1

execute if score @s techsword.effects.parried matches ..0 run attribute @s generic.attack_damage modifier remove deadbabe-2137-4387-bf37-b8b68f333f71
execute if score @s techsword.effects.parried matches ..0 run tag @s remove techsword.effects.parried
execute if score @s techsword.effects.parried matches ..0 run scoreboard players reset @s techsword.effects.parried