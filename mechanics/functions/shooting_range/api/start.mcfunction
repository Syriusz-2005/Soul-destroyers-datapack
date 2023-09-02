#define scoreholder $Timer used for timing things
scoreboard players set $Timer w.shooting_range 120
#define scoreholder $Delay delay between target spawns
scoreboard players set $Delay w.shooting_range 120
#define scoreholder $Patience time in ticks before target changes color to dark red
scoreboard players set $Patience w.shooting_range 160
#define scoreholder $Perseverance time in ticks before target makes player loose game
scoreboard players set $Perseverance w.shooting_range 240
scoreboard players set @p[gamemode=!spectator] w.shooting_range.score 0
scoreboard objectives setdisplay sidebar w.shooting_range.score