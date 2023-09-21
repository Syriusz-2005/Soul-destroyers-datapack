
scoreboard players remove @s ma.halberdAttack.preparation_cooldown 1

execute if score @s ma.halberdAttack.preparation_cooldown matches 1 facing entity @p eyes positioned ^ ^ ^1.5 run particle sweep_attack ~ ~ ~ 1 0.1 1 0 40 force
execute if score @s ma.halberdAttack.preparation_cooldown matches 1 facing entity @p eyes positioned ^ ^ ^1.5 run damage @p[distance=..2.2] 6 mob_attack by @s
