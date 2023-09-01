advancement revoke @s only techsword:right_click

execute if entity @s[tag=techsword] if predicate techsword:is_sneaking unless score @s techsword.skill_cooldown matches 1.. at @s run function techsword:skills/parry
execute if entity @s[tag=techsword,nbt={OnGround:true}] unless predicate techsword:is_sneaking unless score @s techsword.skill_cooldown matches 1.. at @s run function techsword:skills/dash

#say right mouse button clicked!