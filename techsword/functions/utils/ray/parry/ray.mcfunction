execute as @e[dx=0,type=!player,type=!interaction] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function techsword:utils/ray/parry/hit
execute unless score @s techsword.dist matches 1.. run return 0

scoreboard players remove @s techsword.dist 1
execute if score @s techsword.dist matches 1.. positioned ^ ^ ^0.1 run function techsword:utils/ray/parry/ray