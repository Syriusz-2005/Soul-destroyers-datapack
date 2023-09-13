scoreboard players operation $Highscore w.shooting_range.score = @s w.shooting_range.score

# Validate achievemnt
advancement grant @s only w:soul_destroyers/achievements/shooting_range_new_highscore

#VFX
title @s times 20 60 20
title @s subtitle ["",{"text":"your new highscore is ","color":"dark_aqua"},{"score":{"name":"$Highscore","objective":"w.shooting_range.score"},"color":"white"},{"text":"!","color":"dark_aqua"}]
title @s title {"text":"New highscore! 😎","color":"gold"}
summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Flicker:1b,Colors:[I;15790320,2651799]}]}}}}