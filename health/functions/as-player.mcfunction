

# effect give @s[scores={hunger=10..}] minecraft:hunger 1 255 true
# effect give @s[scores={hunger=..6}] minecraft:saturation 1 1 true

execute if score %15s timers matches 0 if entity @s[tag=!w.no-healing] run effect give @s minecraft:regeneration 1 2 true