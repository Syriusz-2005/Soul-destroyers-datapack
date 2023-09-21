

scoreboard players remove @s ma.halberdAttack.cooldown 1
execute if score @s ma.halberdAttack.cooldown matches 1.. run return 1


scoreboard players set $min random 0
scoreboard players set $max random 80
function random:uniform

execute unless score $out random matches 0 run return 1
execute unless entity @p[distance=..7] run return 1

scoreboard players set @s ma.halberdAttack.cooldown 60

function mob-abilities:halberd_attack/start_attack

