
#Run on tick
#auto generated

execute if score %state mine._cliffhorn_theme.mp3 matches 1 if score %moment mine._cliffhorn_theme.mp3 matches 0 as @a at @s run playsound custom:cliffhorn_theme/intro master @s
execute if score %state mine._cliffhorn_theme.mp3 matches 2 if score %moment mine._cliffhorn_theme.mp3 matches 0 as @a at @s run playsound custom:cliffhorn_theme/loop master @s
execute if score %state mine._cliffhorn_theme.mp3 matches 4 if score %moment mine._cliffhorn_theme.mp3 matches 0 as @a at @s run playsound custom:cliffhorn_theme/end master @s

execute if score %state mine._cliffhorn_theme.mp3 matches 1.. run scoreboard players add %moment mine._cliffhorn_theme.mp3 1

execute if score %state mine._cliffhorn_theme.mp3 matches 1 if score %moment mine._cliffhorn_theme.mp3 >= %intro-length mine._cliffhorn_theme.mp3 run function mine:cliffhorn_theme/_move-to-loop
execute if score %state mine._cliffhorn_theme.mp3 matches 2 if score %moment mine._cliffhorn_theme.mp3 >= %loop-length mine._cliffhorn_theme.mp3 run function mine:cliffhorn_theme/_move-to-loop
execute if score %state mine._cliffhorn_theme.mp3 matches 3 if score %moment mine._cliffhorn_theme.mp3 >= %loop-length mine._cliffhorn_theme.mp3 run function mine:cliffhorn_theme/_move-to-finish
execute if score %state mine._cliffhorn_theme.mp3 matches 4 if score %moment mine._cliffhorn_theme.mp3 >= %end-length mine._cliffhorn_theme.mp3 run function mine:cliffhorn_theme/_finish
