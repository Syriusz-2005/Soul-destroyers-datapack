execute as @a[tag=!mechanics.hidden_player,gamemode=!spectator,scores={mechanics.exposure=0..}] at @s at @e[tag=mechanics.witness,distance=..64,limit=1,sort=nearest] run function mechanics:visibility/_apply_exposure

# Hide
execute as @a[tag=!mechanics.hidden_player,gamemode=!spectator,scores={mechanics.exposure=0..}] at @s if entity @e[type=marker,tag=mechanics.hiding_spot,distance=..1] run function mechanics:visibility/_hide
# Uncover
execute as @a[tag=mechanics.hidden_player] at @s unless entity @e[type=marker,tag=mechanics.hiding_spot,distance=..1] run function mechanics:visibility/_uncover

execute at @e[type=marker,tag=mechanics.hiding_spot] run particle glow ~ ~ ~ 0.25 0.25 0.25 0 1 normal