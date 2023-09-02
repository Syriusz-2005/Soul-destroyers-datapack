

execute as @e[tag=mob-abilities.dasher] at @s run function mob-abilities:dash/tick

execute as @e[tag=mob-abilities.cobweb-thrower,nbt=!{NoAI:true}] at @s run function mob-abilities:cobweb-throw/tick
execute as @e[tag=mob-abilities.cobweb-marker] if entity @s[nbt={Age:99}] at @s run setblock ~ ~ ~ air
execute as @e[tag=mob-abilities.cobweb-projectile] at @s run function mob-abilities:cobweb-throw/tick-as-projectile

execute as @e[tag=mob-abilities.guard_forest] at @s run function mob-abilities:guard_forest/tick
execute as @e[tag=ma.wave.marker] at @s run function mob-abilities:guard_forest/tick_as_wave
execute as @e[tag=ma.spores_cloud] at @s run function mob-abilities:guard_forest/tick_as_spore_cloud
execute as @e[tag=ma.warped_fungus_projectile] at @s run function mob-abilities:guard_forest/tick_as_fungus

execute as @e[scores={ma.fungus_throw.preparation_cooldown=1..}] at @s run function mob-abilities:guard_forest/tick_throwing_fungus

execute as @e[tag=mob-abilities.underwaterDasher,nbt=!{NoAI:true}] at @s run function mob-abilities:underwater_dash/tick