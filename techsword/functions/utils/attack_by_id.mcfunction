# If rest failed, do a push attack
execute if score @s techsword.stored_attack_id matches 1 if entity @s[nbt={OnGround:1b}] run function techsword:attacks/push
# Power push?
execute if score @s techsword.stored_attack_id matches 2 if entity @s[nbt={OnGround:1b}] run function techsword:attacks/power_push
# Check for up-sweep attack
execute if score @s techsword.stored_attack_id matches 3 if entity @s[nbt={OnGround:1b}] run function techsword:attacks/uppercut
# Check for wide slash and extra wide slash
execute if score @s techsword.stored_attack_id matches 4 if entity @s[nbt={OnGround:1b}] run function techsword:attacks/wide_slash
execute if score @s techsword.stored_attack_id matches 5 if entity @s[nbt={OnGround:1b}] run function techsword:attacks/extra_wide_slash
# Check for head pat :D
execute if score @s techsword.stored_attack_id matches 6 if entity @s[nbt={OnGround:0b}] run function techsword:attacks/head_pat

# Reset attack id
scoreboard players reset @s techsword.stored_attack_id