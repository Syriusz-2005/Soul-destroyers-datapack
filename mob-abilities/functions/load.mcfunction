scoreboard objectives add mob-abilities.math dummy

#declare tag mob-abilities.dasher
scoreboard objectives add mob-abilities.dash.cooldown dummy
scoreboard objectives add mob-abilities.dash.preparation-colldown dummy
scoreboard objectives add mob-abilities.dash.dashing-ticks dummy
execute as @e[tag=mob-abilities.dasher] at @s run function mob-abilities:dash/tick