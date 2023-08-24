## Attack while moving mouse sideways

#Apply sum statistics
scoreboard players operation @s techsword.last_wide_attack_direction = @s techsword.sweep_direction
scoreboard players reset @s techsword.sweep_direction

# Cooldown
scoreboard players set @s techsword.attack_cooldown 17

# FX
execute rotated ~ 0 positioned ^ ^-1 ^ run function techsword:fx/wide_slash
#execute rotated ~ 0 positioned ^1 ^ ^1 run particle minecraft:sweep_attack ~ ~-0.5 ~ 0.1 0.1 0.1 1 3 force
#execute rotated ~ 0 positioned ^ ^ ^2 run particle minecraft:sweep_attack ~ ~-0.5 ~ 0.1 0.1 0.1 1 3 force
#execute rotated ~ 0 positioned ^-1 ^ ^1 run particle minecraft:sweep_attack ~ ~-0.5 ~ 0.1 0.1 0.1 1 3 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.5 1
playsound minecraft:block.rooted_dirt.step master @a ~ ~ ~ 1 1
effect give @s minecraft:slowness 1 0 true

# Attack
scoreboard players set $strength techsword.knockback_facing 6
execute anchored feet as @e[distance=0.1..3.5] facing entity @s feet rotated ~ -15 run function techsword:utils/knockback_facing
execute as @e[distance=0.1..3.5] run damage @s 2 player_attack

#debug
#say Sweep-a-ttack!