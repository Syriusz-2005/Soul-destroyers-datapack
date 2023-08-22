# FX
execute rotated ~ 0 run particle minecraft:cloud ^ ^1 ^1.5 0.125 0.5 0.125 0.1 20
particle minecraft:cloud ~ ~0.5 ~ 0.25 0.25 0.25 0.3 20
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.5 0.8
playsound minecraft:block.rooted_dirt.step master @a ~ ~ ~ 0.7 1
playsound minecraft:item.armor.equip_elytra master @a ~ ~ ~ 1 0.8
effect give @s minecraft:slowness 1 0 true

# Cooldown
scoreboard players set @s techsword.attack_cooldown 10

# Launch
scoreboard players set $strength delta.api.launch 6900
execute rotated ~ -90 run function delta:api/launch_looking

# Attack
scoreboard players set $strength techsword.knockback_facing 6
execute anchored feet rotated ~ 0 positioned ^ ^ ^2 as @e[distance=..1,type=!player] rotated ~ -80 run function techsword:utils/knockback_facing
execute anchored feet rotated ~ 0 positioned ^ ^ ^2 as @e[distance=..1,type=!player] run damage @s 1.5 player_attack

#debug
#say Up-sweep-a-ttack!