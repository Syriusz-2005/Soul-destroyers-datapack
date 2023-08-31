
tag @s add ma.wave.marker
data merge entity @s {Duration: 999999}
scoreboard players set @s ma.wave.lifetime 60
execute facing entity @p feet run tp @s ~ ~ ~ ~ ~

execute anchored feet facing entity @p feet positioned ^ ^ ^.7 run summon marker ~ ~ ~ {Tags: ["mob-abilities.raycaster"]}

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