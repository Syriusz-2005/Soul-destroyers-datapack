# Check for sweeping attack
execute unless score @s techsword.attack_cooldown matches 1.. if score @s techsword.sweep_timer matches 1.. run function techsword:attacks/wide_slash
# Check for up-sweep attack
execute unless score @s techsword.attack_cooldown matches 1.. if predicate techsword:is_sneaking run function techsword:attacks/uppercut
# Power push?
execute unless score @s techsword.attack_cooldown matches 1.. if score @s techsword.push_counter matches 3.. run function techsword:attacks/power_push
# If rest failed, do a push attack
execute unless score @s techsword.attack_cooldown matches 1.. run function techsword:attacks/push