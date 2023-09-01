# Calculate velocity using previous position
execute store result score @s techsword.v_x run data get entity @s Pos[0] 50000
execute store result score @s techsword.v_z run data get entity @s Pos[2] 50000
scoreboard players operation @s techsword.v_x -= @s techsword.pos_x
scoreboard players operation @s techsword.v_z -= @s techsword.pos_z

# Store new position
execute store result score @s techsword.pos_x run data get entity @s Pos[0] 50000
execute store result score @s techsword.pos_z run data get entity @s Pos[2] 50000