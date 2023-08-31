

data merge entity @s {block_state:{Name:"minecraft:warped_fungus"},brightness:{block:15,sky:15},transformation:{scale:[0.7f,0.7f,0.7f]},Tags:["ma.warped_fungus_projectile"]}

scoreboard players set @s ma.fungus_throw.lifetime 80


execute anchored feet facing entity @p eyes positioned ^ ^ ^0.7 run summon marker ~ ~ ~ {Tags: ["mob-abilities.raycaster"]}

execute store result score $X mob-abilities.math run data get entity @s Pos[0] 1000
execute store result score $Y mob-abilities.math run data get entity @s Pos[1] 1000
execute store result score $Z mob-abilities.math run data get entity @s Pos[2] 1000

execute store result score $_X mob-abilities.math run data get entity @e[tag=mob-abilities.raycaster,sort=nearest,limit=1] Pos[0] 1000
execute store result score $_Y mob-abilities.math run data get entity @e[tag=mob-abilities.raycaster,sort=nearest,limit=1] Pos[1] 1000
execute store result score $_Z mob-abilities.math run data get entity @e[tag=mob-abilities.raycaster,sort=nearest,limit=1] Pos[2] 1000

kill @e[tag=mob-abilities.raycaster,limit=1]


scoreboard players operation @s mob-abilities.dx = $_X mob-abilities.math
scoreboard players operation @s mob-abilities.dx -= $X mob-abilities.math

scoreboard players operation @s mob-abilities.dy = $_Y mob-abilities.math
scoreboard players operation @s mob-abilities.dy -= $Y mob-abilities.math

scoreboard players operation @s mob-abilities.dz = $_Z mob-abilities.math
scoreboard players operation @s mob-abilities.dz -= $Z mob-abilities.math


