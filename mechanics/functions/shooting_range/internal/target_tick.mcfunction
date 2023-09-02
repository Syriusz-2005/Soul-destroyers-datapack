# Check showing time
scoreboard players add @s w.shooting_range 1
execute if score @s w.shooting_range = $Patience w.shooting_range run team join w.shooting_range.impatient_target @s
execute if score @s w.shooting_range >= $Perseverance w.shooting_range run function mechanics:shooting_range/api/stop
execute positioned ~ ~0.5 ~0.6 if entity @e[type=#minecraft:arrows,tag=!w.shooting_range.checked,distance=..0.627,nbt={inGround:true}] run function mechanics:shooting_range/internal/kill_target