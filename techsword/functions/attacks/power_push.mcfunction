## Attack x 4

# Cooldown
scoreboard players set @s techsword.attack_cooldown 14

# Apply statistics
scoreboard players set @s techsword.push_counter 0

# FX
particle cloud ^ ^ ^2.5 0.2 0.2 0.2 0.03 7 force
particle minecraft:cloud ~ ~0.5 ~ 0.125 0 0.125 0.08 10 force
playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 2 1.5
playsound minecraft:block.gravel.step master @a ~ ~ ~ 2 1.4
# Prevent jump-launching
#effect give @s minecraft:jump_boost 1 128 true
effect give @s minecraft:slowness 1 0 true

# Launch
scoreboard players set $strength delta.api.launch 6300
execute rotated ~ 0 run function delta:api/launch_looking

# Ray
scoreboard players set @s techsword.dist 40
function techsword:utils/ray/power_push/ray