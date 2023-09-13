# tellraw @a ["",{"text":"dist: "},{"score":{"name":"Technicman69","objective":"techsword.dist"}}]

execute as @e[nbt={Invulnerable:false},tag=!techsword.attacking,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function techsword:utils/ray/power_push/hit
execute unless score @s techsword.dist matches 1.. run return 0

scoreboard players remove @s techsword.dist 1
execute if score @s techsword.dist matches 1.. positioned ^ ^ ^0.1 run function techsword:utils/ray/power_push/ray