# FX
execute rotated ~ 0 positioned ^ ^-1 ^ run function techsword:attack_fx/sweeping_attack
#execute rotated ~ 0 positioned ^1 ^ ^1 run particle minecraft:sweep_attack ~ ~-0.5 ~ 0.1 0.1 0.1 1 3 force
#execute rotated ~ 0 positioned ^ ^ ^2 run particle minecraft:sweep_attack ~ ~-0.5 ~ 0.1 0.1 0.1 1 3 force
#execute rotated ~ 0 positioned ^-1 ^ ^1 run particle minecraft:sweep_attack ~ ~-0.5 ~ 0.1 0.1 0.1 1 3 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.5 1
playsound minecraft:block.rooted_dirt.step master @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_elytra master @a
effect give @s minecraft:slowness 1 0 true

# Cooldown
scoreboard players set @s techsword.attack_cooldown 15

# Attack
execute as @e[distance=0.1..3.5] run damage @s 2 player_attack

#debug
say Sweep-a-ttack!