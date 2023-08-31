scoreboard players remove @s ma.wave.lifetime 1


execute if score @s ma.wave.lifetime matches ..0 run kill @s


execute store result score #posX mob-abilities.math run data get entity @s Pos[0] 1000
execute store result score #posY mob-abilities.math run data get entity @s Pos[1] 1000
execute store result score #posZ mob-abilities.math run data get entity @s Pos[2] 1000

scoreboard players operation #posX mob-abilities.math += @s mob-abilities.dx
scoreboard players operation #posY mob-abilities.math += @s mob-abilities.dy
scoreboard players operation #posZ mob-abilities.math += @s mob-abilities.dz

execute store result entity @s Pos[0] double 0.001 run scoreboard players get #posX mob-abilities.math
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #posY mob-abilities.math
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #posZ mob-abilities.math

particle minecraft:squid_ink ^-2 ^ ^ 0 0 0 0 1
particle minecraft:squid_ink ^-1 ^ ^ 0 0 0 0 1
particle minecraft:squid_ink ^0 ^ ^ 0 0 0 0 1
particle minecraft:squid_ink ^1 ^ ^ 0 0 0 0 1
particle minecraft:squid_ink ^2 ^ ^ 0 0 0 0 1

scoreboard players operation #summonFangs mob-abilities.math = @s ma.wave.lifetime
scoreboard players operation #summonFangs mob-abilities.math %= %3 mob-abilities.math

execute unless score #summonFangs mob-abilities.math matches 0 run return 1

execute facing entity @p feet run summon evoker_fangs ^-2 ^ ^.5
execute facing entity @p feet run summon evoker_fangs ^-1 ^ ^.5
execute facing entity @p feet run summon evoker_fangs ^ ^ ^.5
execute facing entity @p feet run summon evoker_fangs ^1 ^ ^.5
execute facing entity @p feet run summon evoker_fangs ^2 ^ ^.5





