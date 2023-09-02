
execute if score @s ma.underwaterDash.cooldown matches 60..80 run particle bubble ~ ~ ~ 0.2 0.2 0.2 0 7 force

scoreboard players remove @s ma.underwaterDash.cooldown 1
execute if score @s ma.underwaterDash.cooldown matches 1.. run return 1

execute unless entity @p[distance=..20] run return 1

scoreboard players set @s ma.underwaterDash.cooldown 80


execute facing entity @p feet run function mob-abilities:underwater_dash/apply_dash