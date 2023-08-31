
effect clear @s poison



scoreboard players remove @s ma.guard_forest.attack_cooldown 1
execute if score @s ma.guard_forest.attack_cooldown matches 1.. run return 1


scoreboard players set @s ma.guard_forest.attack_cooldown 140

scoreboard players set $min random 0
scoreboard players set $max random 1
function random:uniform

execute if score $out random matches 1 run function mob-abilities:guard_forest/summon_spores
execute if score $out random matches 0 run function mob-abilities:guard_forest/summon_wave

