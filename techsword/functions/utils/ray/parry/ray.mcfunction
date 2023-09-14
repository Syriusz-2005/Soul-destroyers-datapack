execute as @e[nbt={Invulnerable:false},tag=!techsword.attacking,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function techsword:utils/ray/parry/hit
execute as @e[tag=!techsword.attacking,tag=mob-abilities.cobweb-projectile,distance=..0.3] run function techsword:utils/ray/parry/hit_projectile
execute unless score @s techsword.dist matches 1.. run return 0

scoreboard players remove @s techsword.dist 1
execute if score @s techsword.dist matches 1.. positioned ^ ^ ^0.1 run function techsword:utils/ray/parry/ray