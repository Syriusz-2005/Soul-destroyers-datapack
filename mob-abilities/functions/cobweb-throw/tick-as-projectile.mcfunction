scoreboard players remove @s mob-abilities.cobweb-throw.lifetime 1


execute if score @s mob-abilities.cobweb-throw.lifetime matches ..0 run kill @s


execute store result score #posX mob-abilities.math run data get entity @s Pos[0] 1000
execute store result score #posY mob-abilities.math run data get entity @s Pos[1] 1000
execute store result score #posZ mob-abilities.math run data get entity @s Pos[2] 1000

scoreboard players operation #posX mob-abilities.math += @s mob-abilities.dx
scoreboard players operation #posY mob-abilities.math += @s mob-abilities.dy
scoreboard players operation #posZ mob-abilities.math += @s mob-abilities.dz

execute store result entity @s Pos[0] double 0.001 run scoreboard players get #posX mob-abilities.math
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #posY mob-abilities.math
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #posZ mob-abilities.math

execute if entity @p[distance=..2] run function mob-abilities:cobweb-throw/hit-player

