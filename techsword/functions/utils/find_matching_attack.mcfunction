# Check for sweeping attack
execute unless score @s techsword.rotation_0_delta matches -25..25 unless score @s techsword.rotation_0_delta matches 345..360 unless score @s techsword.rotation_0_delta matches -360..-345 run function techsword:attacks/sweeping_attack
# Check for up-sweep attack
execute unless score @s techsword.attack_cooldown matches 1.. if predicate techsword:is_sneaking run function techsword:attacks/upsweep_attack
# Power push?
execute unless score @s techsword.attack_cooldown matches 1.. if score @s techsword.push_counter matches 3.. run function techsword:attacks/power_push
# If rest failed, do a push attack
execute unless score @s techsword.attack_cooldown matches 1.. run function techsword:attacks/push