## Wide-slash in opposite direction that last one
## THIS ATTACK IS UNUSED

#Apply sum statistics
scoreboard players operation @s techsword.last_wide_attack_direction = @s techsword.sweep_direction
scoreboard players reset @s techsword.sweep_direction
scoreboard players reset @s techsword.last_wide_attack_direction

# Cooldown
scoreboard players set @s techsword.attack_cooldown 16

# FX
execute rotated ~ 0 positioned ^ ^-1 ^ run function techsword:vfx/wide_slash
#execute rotated ~ 0 positioned ^1 ^ ^1 run particle minecraft:sweep_attack ~ ~-0.5 ~ 0.1 0.1 0.1 1 3 force
#execute rotated ~ 0 positioned ^ ^ ^2 run particle minecraft:sweep_attack ~ ~-0.5 ~ 0.1 0.1 0.1 1 3 force
#execute rotated ~ 0 positioned ^-1 ^ ^1 run particle minecraft:sweep_attack ~ ~-0.5 ~ 0.1 0.1 0.1 1 3 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.6 0.8
playsound minecraft:block.gravel.step master @a ~ ~ ~ 1.2 0.8
effect give @s minecraft:slowness 1 0 true

# Attack
scoreboard players set $strength techsword.knockback_facing 9
execute anchored feet as @e[nbt={Invulnerable:false},distance=0.1..3.5] facing entity @s feet rotated ~ 15 run function techsword:utils/knockback_facing
execute as @e[nbt={Invulnerable:false},distance=0.1..3.5] run damage @s 5 player_attack

# Launch
scoreboard players set $strength delta.api.launch -2137
execute rotated ~ 15 run function delta:api/launch_looking

#debug
#say Wide-sweep-a-ttack!