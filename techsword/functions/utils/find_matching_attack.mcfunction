## Attacks are ordered by priority - from less to more priotitised

# If rest failed, do a push attack
execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s techsword.stored_attack_id 1
# Power push?
execute if entity @s[nbt={OnGround:1b}] if score @s techsword.push_counter matches 3.. run scoreboard players set @s techsword.stored_attack_id 2
# Check for up-sweep attack
execute if entity @s[nbt={OnGround:1b}] if predicate techsword:is_sneaking run scoreboard players set @s techsword.stored_attack_id 3
# Check for sweeping attack
execute if entity @s[nbt={OnGround:1b}] if score @s techsword.sweep_timer matches 1.. run scoreboard players set @s techsword.stored_attack_id 4
# Check for head pat :D
execute if entity @s[nbt={OnGround:0b}] run scoreboard players set @s techsword.stored_attack_id 5