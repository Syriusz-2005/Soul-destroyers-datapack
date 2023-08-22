scoreboard players remove @s mob-abilities.dash.dashing-ticks 1

# execute store result score $X mob-abilities.math run data get entity @s Motion[0] 1000
# execute store result score $Y mob-abilities.math run data get entity @s Motion[1] 1000
# execute store result score $Z mob-abilities.math run data get entity @s Motion[2] 1000

# tp @s ~ ~ ~ facing entity @p

# execute store result entity @s Motion[0] double 0.001 run scoreboard players get $X mob-abilities.math
# execute store result entity @s Motion[1] double 0.001 run scoreboard players get $Y mob-abilities.math
# execute store result entity @s Motion[2] double 0.001 run scoreboard players get $Z mob-abilities.math


particle crit ~ ~ ~ .1 .1 .1 0 4