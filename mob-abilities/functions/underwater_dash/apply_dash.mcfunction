


execute anchored feet facing entity @p feet positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags: ["mob-abilities.raycaster"]}

execute store result score $X mob-abilities.math run data get entity @s Pos[0] 1000
execute store result score $Y mob-abilities.math run data get entity @s Pos[1] 1000
execute store result score $Z mob-abilities.math run data get entity @s Pos[2] 1000

execute store result score $_X mob-abilities.math run data get entity @e[tag=mob-abilities.raycaster,sort=nearest,limit=1] Pos[0] 1000
execute store result score $_Y mob-abilities.math run data get entity @e[tag=mob-abilities.raycaster,sort=nearest,limit=1] Pos[1] 1000
execute store result score $_Z mob-abilities.math run data get entity @e[tag=mob-abilities.raycaster,sort=nearest,limit=1] Pos[2] 1000

kill @e[tag=mob-abilities.raycaster,limit=1]

scoreboard players operation $_X mob-abilities.math -= $X mob-abilities.math

scoreboard players operation $_Y mob-abilities.math -= $Y mob-abilities.math

scoreboard players operation $_Z mob-abilities.math -= $Z mob-abilities.math

execute store result entity @s Motion[0] double 0.001 run scoreboard players get $_X mob-abilities.math
execute store result entity @s Motion[1] double 0.001 run scoreboard players get $_Y mob-abilities.math
execute store result entity @s Motion[2] double 0.001 run scoreboard players get $_Z mob-abilities.math


particle bubble ~ ~ ~ 0.2 0.2 0.2 0 100 force


