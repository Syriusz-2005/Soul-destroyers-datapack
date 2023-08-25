## Attack

# Cooldown
scoreboard players set @s techsword.attack_cooldown 12

# FX
particle cloud ^ ^ ^2.5 0.2 0.2 0.2 0.03 7 force
particle minecraft:cloud ~ ~0.5 ~ 0.125 0 0.125 0.08 10 force
playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 1.2 1
playsound minecraft:block.rooted_dirt.step master @a ~ ~ ~ 1 1.4
# Prevent jump-launching
#effect give @s minecraft:jump_boost 1 128 true
effect give @s minecraft:slowness 1 0 true

# Launch
scoreboard players set $strength delta.api.launch 6000
execute rotated ~ 30 run function delta:api/launch_looking

# Ray
scoreboard players set @s techsword.dist 37
function techsword:utils/ray/push/ray