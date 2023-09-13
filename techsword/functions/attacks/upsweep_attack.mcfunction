# FX
particle minecraft:cloud ~ ~0.5 ~ 0.25 0.25 0.25 0.3 20
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.5 0.8
playsound minecraft:block.rooted_dirt.step master @a ~ ~ ~ 0.7 1
playsound minecraft:item.armor.equip_elytra master @a ~ ~ ~ 1 0.8
effect give @s minecraft:slowness 1 0 true

# Cooldown
scoreboard players set @s techsword.attack_cooldown 15

# Launch
scoreboard players set $strength delta.api.launch 6900
execute rotated ~ -90 run function delta:api/launch_looking

# Attack
scoreboard players set $strength knockback.api.knockback_facing 7
execute rotated ~ 0 positioned ^ ^ ^2 rotated ~ -80 as @e[nbt={Invulnerable:false},distance=..1.5] run function knockback:api/knockback_facing
execute rotated ~ 0 positioned ^ ^ ^2 as @e[nbt={Invulnerable:false},distance=..1.9] run damage @s 2 player_attack

#debug
say Up-sweep-a-ttack!