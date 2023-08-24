execute store result score @s techsword.rotation_0_delta run data get entity @s Rotation[0]
scoreboard players operation @s techsword.rotation_0_delta -= @s techsword.rotation_0
execute store result score @s techsword.rotation_0 run data get entity @s Rotation[0]

#execute store result score @s techsword.rotation_1_delta run data get entity @s Rotation[1]
#scoreboard players operation @s techsword.rotation_1_delta -= @s techsword.rotation_1
#execute store result score @s techsword.rotation_1 run data get entity @s Rotation[1]

# Sweep counts if |delta| > 25 (but also if |delta| > 345 = 360 - 25 because angle system yaaay!)
execute unless score @s techsword.rotation_0_delta matches -25..25 unless score @s techsword.rotation_0_delta matches 345..360 unless score @s techsword.rotation_0_delta matches -360..-345 run scoreboard players set @s techsword.sweep_timer 5

# What the what is this? O_O
execute if score @s techsword.rotation_0_delta matches 25..180 run scoreboard players set @s techsword.sweep_direction 1
execute if score @s techsword.rotation_0_delta matches -345..-180 run scoreboard players set @s techsword.sweep_direction 1
execute if score @s techsword.rotation_0_delta matches -180..-25 run scoreboard players set @s techsword.sweep_direction 2
execute if score @s techsword.rotation_0_delta matches 180..345 run scoreboard players set @s techsword.sweep_direction 2