scoreboard players remove @s mob-abilities.cobweb-throw.lifetime 1


execute if score @s mob-abilities.cobweb-throw.lifetime matches ..0 run kill @s

tp @s ^ ^ ^.2


execute if entity @p[distance=..1] run function mob-abilities:cobweb-throw/hit-player

