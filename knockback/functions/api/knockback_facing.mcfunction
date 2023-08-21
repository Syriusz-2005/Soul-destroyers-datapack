### Credit: https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing/

# summon the temporary entity
execute positioned as @p run summon marker ^ ^ ^1 {Tags:["knockback.direction"]}

# get the coordinates of the player and the entity
execute store result score #playerX knockback.pos run data get entity @p Pos[0] 1000
execute store result score #playerY knockback.pos run data get entity @p Pos[1] 1000
execute store result score #playerZ knockback.pos run data get entity @p Pos[2] 1000
execute store result score #targetX knockback.pos as @e[type=marker,tag=knockback.direction,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY knockback.pos as @e[type=marker,tag=knockback.direction,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ knockback.pos as @e[type=marker,tag=knockback.direction,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX knockback.pos -= #playerX knockback.pos
scoreboard players operation #targetY knockback.pos -= #playerY knockback.pos
scoreboard players operation #targetZ knockback.pos -= #playerZ knockback.pos

scoreboard players operation #targetX knockback.pos *= $strength knockback.api.knockback_facing
scoreboard players operation #targetY knockback.pos *= $strength knockback.api.knockback_facing
scoreboard players operation #targetZ knockback.pos *= $strength knockback.api.knockback_facing

# apply motion
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #targetX knockback.pos
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #targetY knockback.pos
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #targetZ knockback.pos

# clean up
kill @e[tag=knockback.direction]