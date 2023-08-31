
particle minecraft:warped_spore ~ ~ ~ 2 2 2 0 15
execute store result score #duration mob-abilities.math run data get entity @s Age

execute if score #duration mob-abilities.math matches 30.. run effect give @p[distance=..4] poison 2 2 false

# execute if score #duration mob-abilities.math matches 30.. run particle falling_spore_blossom ~ ~ ~ 2.5 2 2.5 0 12 force


tp @s @e[tag=mob-abilities.guard_forest,sort=nearest,limit=1]