
effect clear @s poison



scoreboard players remove @s ma.guard_forest.attack_cooldown 1
execute if score @s ma.guard_forest.attack_cooldown matches 1.. run return 1

scoreboard players set @s ma.fungus_throw.counter 0



scoreboard players set $min random 0
scoreboard players set $max random 20
function random:uniform

scoreboard players set @s ma.guard_forest.attack_cooldown 140
execute if score $out random matches 0..5 run function mob-abilities:guard_forest/summon_wave
execute if score $out random matches 6..11 run function mob-abilities:guard_forest/summon_spores
execute if score $out random matches 12..17 run function mob-abilities:guard_forest/throw_fungus
execute if score $out random matches 18..20 run function mob-abilities:guard_forest/apply_blindness
execute if score $out random matches 18..20 run scoreboard players set @s ma.guard_forest.attack_cooldown 200
