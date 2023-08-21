

scoreboard objectives add w.scenes dummy

#declare score_holder #w.gameState
#declare tag w.player
#declare storage w:config {testMode?: true}


# execute if data storage w:config testMode

team add oponents
team modify oponents color red
team modify oponents friendlyFire false