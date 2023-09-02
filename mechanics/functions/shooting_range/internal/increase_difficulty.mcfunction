# Remove some delay
execute if score $Delay w.shooting_range matches 81..120 run scoreboard players remove $Delay w.shooting_range 10
execute if score $Delay w.shooting_range matches 61..80 run scoreboard players remove $Delay w.shooting_range 5
execute if score $Delay w.shooting_range matches 41..60 run scoreboard players remove $Delay w.shooting_range 2
execute if score $Delay w.shooting_range matches 31..40 run scoreboard players remove $Delay w.shooting_range 1
# ...and some patience/perserverance
execute if score $Patience w.shooting_range matches 11.. run scoreboard players remove $Patience w.shooting_range 2
execute if score $Perseverance w.shooting_range matches 16.. run scoreboard players remove $Perseverance w.shooting_range 3