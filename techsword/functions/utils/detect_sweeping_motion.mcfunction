execute store result score @s techsword.rotation_0_delta run data get entity @s Rotation[0]
scoreboard players operation @s techsword.rotation_0_delta -= @s techsword.rotation_0
execute store result score @s techsword.rotation_0 run data get entity @s Rotation[0]

#execute store result score @s techsword.rotation_1_delta run data get entity @s Rotation[1]
#scoreboard players operation @s techsword.rotation_1_delta -= @s techsword.rotation_1
#execute store result score @s techsword.rotation_1 run data get entity @s Rotation[1]