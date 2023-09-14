## Attacks are ordered by priority - from less to more priotitised

# If rest failed, do a push attack
execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s techsword.stored_attack_id 1
# Power push?
execute if entity @s[nbt={OnGround:1b}] if score @s techsword.push_counter matches 3.. run scoreboard players set @s techsword.stored_attack_id 2
# Check for sweeping attack
execute if entity @s[nbt={OnGround:1b}] if predicate techsword:is_sneaking run scoreboard players set @s techsword.stored_attack_id 4
# Check for up-sweep attack
execute if entity @s[nbt={OnGround:1b}] if score @s techsword.is_player_crouching matches 1.. anchored feet rotated ~ 0 positioned ^ ^ ^0.25 if entity @e[type=marker,tag=techsword.tracker,limit=1,sort=nearest,distance=..0.15] run scoreboard players set @s techsword.stored_attack_id 3
#execute if entity @s[nbt={OnGround:1b}] if entity @s[scores={techsword.sweep_timer=1..,techsword.sweep_direction=1,techsword.last_wide_attack_direction=2}] run scoreboard players set @s techsword.stored_attack_id 5
#execute if entity @s[nbt={OnGround:1b}] if entity @s[scores={techsword.sweep_timer=1..,techsword.sweep_direction=2,techsword.last_wide_attack_direction=1}] run scoreboard players set @s techsword.stored_attack_id 5
# Check for head pat :D
execute if entity @s[nbt={OnGround:0b}] run scoreboard players set @s techsword.stored_attack_id 6