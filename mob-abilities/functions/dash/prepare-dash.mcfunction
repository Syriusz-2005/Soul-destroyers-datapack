
scoreboard players remove @s mob-abilities.dash.preparation-colldown 1

execute if score @s mob-abilities.dash.preparation-colldown matches 0 run function mob-abilities:dash/run-dash
execute if score @s mob-abilities.dash.preparation-colldown matches 0 run return 1

effect give @s slowness 1 3 true


particle minecraft:cloud ~ ~ ~ .5 1 .5 0 1
