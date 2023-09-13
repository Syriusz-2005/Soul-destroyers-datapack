## Attack while in air

# Cooldown
scoreboard players set @s techsword.attack_cooldown 25

# FX
execute rotated ~ 0 run particle minecraft:cloud ^ ^0.5 ^1.5 0.125 0.75 0.125 0.1 20
particle crit ^ ^ ^1.5 0.25 0.25 0.25 1 7
playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 1.5
playsound entity.player.attack.crit master @a ~ ~ ~ 1.5 1
effect give @s minecraft:slowness 1 1 true

# Launch
scoreboard players set $strength delta.api.launch 2000
execute rotated ~ 90 run function delta:api/launch_looking

# Attack
scoreboard players set $strength techsword.knockback_facing 10
execute anchored feet rotated ~ 0 positioned ^ ^ ^2 as @e[nbt={Invulnerable:false},distance=..1.3] rotated ~ 80 run function techsword:utils/knockback_facing
execute anchored feet rotated ~ 0 positioned ^ ^ ^2 as @e[nbt={Invulnerable:false},distance=..1.3] run damage @s 7 player_attack

#debug
#say Up-sweep-a-ttack!