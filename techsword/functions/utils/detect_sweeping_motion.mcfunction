execute store result score @s techsword.rotation_0_delta run data get entity @s Rotation[0]
scoreboard players operation @s techsword.rotation_0_delta -= @s techsword.rotation_0
execute store result score @s techsword.rotation_0 run data get entity @s Rotation[0]

#execute store result score @s techsword.rotation_1_delta run data get entity @s Rotation[1]
#scoreboard players operation @s techsword.rotation_1_delta -= @s techsword.rotation_1
#execute store result score @s techsword.rotation_1 run data get entity @s Rotation[1]

execute unless score @s techsword.rotation_0_delta matches -25..25 unless score @s techsword.rotation_0_delta matches 345..360 unless score @s techsword.rotation_0_delta matches -360..-345 run scoreboard players set @s techsword.sweep_timer 6