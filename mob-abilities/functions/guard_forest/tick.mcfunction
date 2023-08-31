




scoreboard players remove @s ma.guard_forest.attack_cooldown 1
execute if score @s ma.guard_forest.attack_cooldown matches 1.. run return 1


scoreboard players set @s ma.guard_forest.attack_cooldown 100
function mob-abilities:guard_forest/summon_wave
