
#preparing cooldown
scoreboard players remove @s mob-abilities.cobweb-throw.cooldown 1
execute if score @s mob-abilities.cobweb-throw.cooldown matches 1.. run return 1

#checking for a player
execute unless entity @p[distance=..20] run return 1


#Applying random chance
scoreboard players set $min random 0
scoreboard players set $max random 80
function random:uniform
execute unless score $out random matches 0 run return 1

function mob-abilities:cobweb-throw/throw

scoreboard players set @s mob-abilities.cobweb-throw.cooldown 180