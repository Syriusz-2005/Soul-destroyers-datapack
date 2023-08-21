advancement revoke @s only techsword:left_click
say left mouse button clicked!

execute if entity @s[nbt={OnGround:1b}] unless score @s techsword.attack_cooldown matches 1.. anchored eyes run function techsword:utils/find_matching_attack