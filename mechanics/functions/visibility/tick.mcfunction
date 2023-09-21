execute as @a[tag=!mechanics.hidden_player,gamemode=!spectator,scores={mechanics.exposure=-1..},tag=w.player] at @s at @e[tag=mechanics.witness,distance=..160,limit=1,sort=nearest] run function mechanics:visibility/_apply_exposure
execute as @a[tag=w.player,scores={mechanics.exposure=-1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run scoreboard players add @s mechanics.exposure 4


scoreboard players set #2 w.internal 2
scoreboard players set $stunt-ticks effect.tick 160
scoreboard players operation $stunt-ticks effect.tick = @a[scores={mechanics.exposure=-1..},tag=w.player,limit=1] mechanics.exposure
scoreboard players operation $stunt-ticks effect.tick /= #2 w.internal
execute if score $stunt-ticks effect.tick matches 69.. run scoreboard players set $stunt-ticks effect.tick 69
execute if score $stunt-ticks effect.tick matches 0..1 run scoreboard players set $stunt-ticks effect.tick 2
execute unless entity @e[tag=mechanics.witness] run scoreboard players set $stunt-ticks effect.tick 0

# Hide
execute as @a[tag=!mechanics.hidden_player,gamemode=!spectator,scores={mechanics.exposure=0..}] at @s if entity @e[type=marker,tag=mechanics.hiding_spot,distance=..1] run function mechanics:visibility/_hide
execute as @a[tag=w.player,gamemode=!spectator,scores={mechanics.exposure=1..}] at @s if entity @e[type=marker,tag=mechanics.hiding_spot,distance=..1] run scoreboard players remove @s mechanics.exposure 1
# Uncover
execute as @a[tag=mechanics.hidden_player] at @s unless entity @e[type=marker,tag=mechanics.hiding_spot,distance=..1] run function mechanics:visibility/_uncover

execute at @e[type=marker,tag=mechanics.hiding_spot] run particle glow ~ ~ ~ 0.25 1.4 0.25 0 1 normal
execute at @e[type=marker,tag=mechanics.final_hiding_spot] run particle minecraft:glow_squid_ink ~ ~ ~ 0 1 0 0 1


execute as @a[tag=w.player,scores={mechanics.exposure=160..}] run tp @s -1076.72 92.00 -193.52 -620.54 -8.96
execute as @a[tag=w.player,scores={mechanics.exposure=160..}] run title @a title {"text": "You've been caught!", "bold": true,"color": "red"}
execute as @a[tag=w.player,scores={mechanics.exposure=160..}] run function w:generated/evaporation-pt-2/0-0

execute if entity @e[tag=mechanics.witness] store result bossbar stealth value run scoreboard players get @a[tag=w.player,sort=nearest,limit=1] mechanics.exposure
execute if entity @e[tag=mechanics.witness] if entity @a[tag=w.player] if score $stealthTime w.internal matches 1.. run scoreboard players remove $stealthTime w.internal 1
execute store result bossbar stealthtime value run scoreboard players get $stealthTime w.internal

execute if entity @e[tag=mechanics.witness] if score $stealthTime w.internal matches 1 run title @a title {"text": "You've ran out of time!", "bold": true,"color": "red"}
execute if entity @e[tag=mechanics.witness] if score $stealthTime w.internal matches 1 run tp @s -1076.72 92.00 -193.52 -620.54 -8.96
execute if entity @e[tag=mechanics.witness] if score $stealthTime w.internal matches 1 run function w:generated/evaporation-pt-2/0-0