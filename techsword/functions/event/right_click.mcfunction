advancement revoke @s only techsword:right_click

#execute as @s[tag=techsword] unless predicate techsword:is_sneaking unless score @s techsword.skill_cooldown matches 1.. at @s run function techsword:skills/parry
#execute as @s[tag=techsword,nbt={OnGround:true}] if predicate techsword:is_sneaking unless score @s techsword.skill_cooldown matches 1.. at @s run function techsword:skills/dash

execute as @s[tag=techsword] unless score @s techsword.skill_cooldown matches 1.. at @s run function techsword:skills/parry
#execute as @s[tag=techsword,nbt={OnGround:true}] unless score @s techsword.skill_cooldown matches 1.. at @s run function techsword:skills/dash

#say right mouse button clicked!