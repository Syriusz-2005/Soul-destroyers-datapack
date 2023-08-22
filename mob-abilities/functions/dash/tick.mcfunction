
execute if score @s mob-abilities.dash.dashing-ticks matches 1.. run function mob-abilities:dash/tick-dash
execute if score @s mob-abilities.dash.dashing-ticks matches 1.. run return 1


execute if score @s mob-abilities.dash.preparation-colldown matches 1.. run function mob-abilities:dash/prepare-dash
execute if score @s mob-abilities.dash.preparation-colldown matches 1.. run return 1

scoreboard players remove @s mob-abilities.dash.cooldown 1
execute if score @s mob-abilities.dash.cooldown matches 1.. run return 1

scoreboard players set $min random 0
scoreboard players set $max random 50
function random:uniform

execute unless score $out random matches 0 run return 1

scoreboard players set @s mob-abilities.dash.cooldown 200
scoreboard players set @s mob-abilities.dash.preparation-colldown 20