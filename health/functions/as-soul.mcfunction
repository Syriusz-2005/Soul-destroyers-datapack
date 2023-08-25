
execute store result score #absorption w.internal run data get entity @p AbsorptionAmount

execute if score #absorption w.internal matches 0 run effect give @p absorption 15 0
execute if score #absorption w.internal matches 1.. run effect clear @p absorption

execute if score #absorption w.internal matches 2.. run effect give @p absorption 15 1

execute at @p run tp @s ~ ~-50 ~
execute at @p run effect clear @s glowing
execute at @p run kill @s

execute at @p run playsound entity.experience_orb.pickup master @a ~ ~ ~
