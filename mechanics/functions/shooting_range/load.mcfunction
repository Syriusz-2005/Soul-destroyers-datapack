scoreboard objectives add w.shooting_range dummy
scoreboard objectives add w.shooting_range.score dummy
scoreboard objectives modify w.shooting_range.score displayname {"text":"Score","color":"gold"}

team add w.shooting_range.target
team modify w.shooting_range.target color red
team add w.shooting_range.impatient_target
team modify w.shooting_range.impatient_target color dark_red