

scoreboard objectives add w.scenes dummy
scoreboard objectives add w.death deathCount
scoreboard objectives add w.death-ticks dummy

#declare score_holder #w.gameState
#declare tag w.player
#declare tag w.dead defines if the player has just died
#declare storage w:config {testMode?: true}


# execute if data storage w:config testMode

team add oponents
team modify oponents color red
team modify oponents friendlyFire false