# Apply statistics
scoreboard players set @s techsword.push_timer 17
scoreboard players add @s techsword.push_counter 1

# FX
particle cloud ^ ^ ^2.5 0.2 0.2 0.2 0.03 7 force
particle minecraft:cloud ~ ~0.5 ~ 0.125 0 0.125 0.08 10 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 1.4
playsound minecraft:block.rooted_dirt.step master @a ~ ~ ~ 1.5 1.4
# Prevent jump-launching
effect give @s minecraft:jump_boost 1 128 true
effect give @s minecraft:slowness 1 0 true

# Cooldown
scoreboard players set @s techsword.attack_cooldown 12

# Launch
scoreboard players set $strength delta.api.launch 6000
execute rotated ~ 0 run function delta:api/launch_looking

# Ray
scoreboard players set @s techsword.dist 35
function techsword:utils/ray/push/ray