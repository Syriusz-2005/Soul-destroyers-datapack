# Launch
execute store result score $x delta.api.launch run data get entity @s Motion[0] 10000
scoreboard players set $y delta.api.launch 3000
execute store result score $z delta.api.launch run data get entity @s Motion[2] 10000

tellraw @a [{"text": "x: "},{"score":{"name": "$x", "objective": "delta.api.launch"}},{"text": ", "},{"text": "y: "},{"score":{"name": "$y", "objective": "delta.api.launch"}},{"text": ", "},{"text": "z: "},{"score":{"name": "$z", "objective": "delta.api.launch"}},{"text": ", "}]

function delta:api/launch_xyz

# Cooldown
scoreboard players set @s techsword.skill_cooldown 14

#DEBUG
say dash