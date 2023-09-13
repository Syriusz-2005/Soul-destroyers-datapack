
#Run on load
#auto generated
scoreboard objectives add mine._cliffhorn_theme.mp3 dummy

#state of current music
# 0 - None
# 1 - intro
# 2 - loop
# 3 - loop before finish
# 4 - finish
scoreboard players set %state mine._cliffhorn_theme.mp3 0

#state of current music part
scoreboard players set %moment mine._cliffhorn_theme.mp3 0

scoreboard players set %intro-length mine._cliffhorn_theme.mp3 2
scoreboard players set %loop-length mine._cliffhorn_theme.mp3 3336
scoreboard players set %end-length mine._cliffhorn_theme.mp3 1
