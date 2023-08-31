
effect clear @s poison



scoreboard players remove @s ma.guard_forest.attack_cooldown 1
execute if score @s ma.guard_forest.attack_cooldown matches 1.. run return 1



scoreboard players set $min random 0
scoreboard players set $max random 3
function random:uniform

scoreboard players set @s ma.guard_forest.attack_cooldown 140
execute if score $out random matches 0 run function mob-abilities:guard_forest/summon_wave
execute if score $out random matches 1 run function mob-abilities:guard_forest/summon_spores
execute if score $out random matches 2 run function mob-abilities:guard_forest/apply_blindness
execute if score $out random matches 2 run scoreboard players set @s ma.guard_forest.attack_cooldown 200
execute if score $out random matches 3 run function mob-abilities:guard_forest/throw_fungus
