
execute store result score #absorption w.internal run data get entity @p AbsorptionAmount

execute if score #absorption w.internal matches 0 run effect give @p absorption 15 0
execute if score #absorption w.internal matches 1.. run effect clear @p absorption

execute if score #absorption w.internal matches 2.. run effect give @p absorption 15 1

execute at @p run tp @s ~ ~-50 ~
execute at @p run effect clear @s glowing
execute at @p run kill @s

function effect:adrenalin/apply
execute at @p run particle soul_fire_flame ~ ~0.2 ~ 1 1 1 0 80 normal

execute at @p run playsound entity.experience_orb.pickup master @a ~ ~ ~
