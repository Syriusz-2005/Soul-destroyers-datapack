

execute as @e[tag=mob-abilities.dasher] at @s run function mob-abilities:dash/tick

execute as @e[tag=mob-abilities.dasher] at @s run function mob-abilities:cobweb-throw/tick
execute as @e[tag=mob-abilities.cobweb-marker] if entity @s[nbt={Duration:1}] at @s run setblock ~ ~ ~ air
execute as @e[tag=mob-abilities.cobweb-projectile] at @s run function mob-abilities:cobweb-throw/tick-as-projectile