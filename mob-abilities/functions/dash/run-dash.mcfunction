
effect clear @s slowness
particle angry_villager ~ ~ ~ .4 1 .4 0 8

execute unless entity @p[distance=..20] run return 1 

execute anchored feet facing entity @p eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags: ["mob-abilities.raycaster"]}

execute store result score $X mob-abilities.math run data get entity @s Pos[0] 100
execute store result score $Y mob-abilities.math run data get entity @s Pos[1] 100
execute store result score $Z mob-abilities.math run data get entity @s Pos[2] 100

execute store result score $_X mob-abilities.math run data get entity @e[tag=mob-abilities.raycaster,sort=nearest,limit=1] Pos[0] 100
execute store result score $_Y mob-abilities.math run data get entity @e[tag=mob-abilities.raycaster,sort=nearest,limit=1] Pos[1] 100
execute store result score $_Z mob-abilities.math run data get entity @e[tag=mob-abilities.raycaster,sort=nearest,limit=1] Pos[2] 100

kill @e[tag=mob-abilities.raycaster]


scoreboard players operation $dX mob-abilities.math = $_X mob-abilities.math
scoreboard players operation $dX mob-abilities.math -= $X mob-abilities.math

scoreboard players operation $dY mob-abilities.math = $_Y mob-abilities.math
scoreboard players operation $dY mob-abilities.math -= $Y mob-abilities.math
scoreboard players add $dY mob-abilities.math 70

scoreboard players operation $dZ mob-abilities.math = $_Z mob-abilities.math
scoreboard players operation $dZ mob-abilities.math -= $Z mob-abilities.math


# execute store result entity @s Motion[0] double .02 run scoreboard players get $dX mob-abilities.math
# execute store result entity @s Motion[1] double .003 run scoreboard players get $dY mob-abilities.math
# execute store result entity @s Motion[2] double .02 run scoreboard players get $dZ mob-abilities.math

effect give @s speed 3 2 true

scoreboard players set @s mob-abilities.dash.dashing-ticks 8