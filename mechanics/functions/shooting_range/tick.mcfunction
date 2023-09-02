### TODO:
# - uniemożliwić spawn guardianów w jednym miejscu
# - gra z czasem przyspiesza
# - komunikaty odnośnie szybkości strzału (sh*t, bad, good, sick)
# - za długo brak strzału/zbyt dużo celów = gameover
# - pokazanie score'a

# Timer
scoreboard players remove $Timer w.shooting_range 1

# Summon new Target
execute if score $Delay w.shooting_range matches 1.. if score $Timer w.shooting_range matches ..0 at @e[type=marker,tag=w.shooting_range.dummy,limit=1,sort=random] run function mechanics:shooting_range/internal/summon_target
execute if score $Delay w.shooting_range matches 1.. if score $Timer w.shooting_range matches ..0 run scoreboard players operation $Timer w.shooting_range = $Delay w.shooting_range

# Check target
execute as @e[type=guardian,tag=w.shooting_range.target] at @s if entity @e[type=#minecraft:arrows,tag=!w.shooting_range.checked,distance=..1,nbt={inGround:true}] run function mechanics:shooting_range/internal/kill_target

execute as @e[type=marker,tag=w.shooting_range.dummy] at @s run tag @e[type=#minecraft:arrows,tag=!w.shooting_range.checked,distance=..1,nbt={inGround:true}] add w.shooting_range.checked