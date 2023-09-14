# Calculate launch
#scoreboard players operation $x delta.api.launch = @s techsword.v_x
#scoreboard players set $y delta.api.launch -30
#scoreboard players operation $z delta.api.launch = @s techsword.v_z

#VFX
particle minecraft:cloud ~ ~0.5 ~ 0.125 0 0.125 0.08 10 force
playsound minecraft:block.gravel.step master @a ~ ~ ~ 1.2 1.7

#DEBUG
#tellraw @a [{"text": "dx: "},{"score":{"name": "@s", "objective": "techsword.v_x"}},{"text": ", "},{"text": "dz: "},{"score":{"name": "@s", "objective": "techsword.v_z"}},{"text": ", "}]

# Launch
#function delta:api/launch_xyz
scoreboard players set $strength delta.api.launch -8690
execute facing entity @e[type=marker,tag=techsword.tracker,limit=1,sort=nearest] feet rotated ~ -30 run function delta:api/launch_looking

# Cooldown
scoreboard players set @s techsword.skill_cooldown 14
scoreboard players set @s techsword.attack_cooldown 12

#DEBUG
#say dash