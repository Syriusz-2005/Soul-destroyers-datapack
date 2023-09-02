### TODO:
# - komunikaty odnośnie szybkości strzału (sh*t, bad, good, sick)

execute if score $Delay w.shooting_range matches 1.. run function mechanics:shooting_range/internal/game_tick

execute as @e[type=marker,tag=w.shooting_range.dummy] at @s positioned ~ ~0.5 ~0.6 run tag @e[type=#minecraft:arrows,tag=!w.shooting_range.checked,distance=..0.627,nbt={inGround:true}] add w.shooting_range.checked