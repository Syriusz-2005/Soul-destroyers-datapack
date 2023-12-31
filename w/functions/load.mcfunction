#declare objective w.internal

scoreboard objectives add w.scenes dummy
scoreboard objectives add w.death deathCount
scoreboard objectives add w.death-ticks dummy

scoreboard objectives add w.modelId dummy

#declare score_holder #w.gameState
#declare tag w.player
#declare tag w.dead defines if the player has just died
#declare storage w:config {testMode?: true}


# execute if data storage w:config testMode

team add oponents
team modify oponents color red
team modify oponents friendlyFire false


scoreboard objectives add w.x dummy
scoreboard objectives add w.y dummy
scoreboard objectives add w.z dummy


scoreboard objectives add w.cx dummy
scoreboard objectives add w.cy dummy
scoreboard objectives add w.cz dummy

scoreboard objectives add w.modelSkeleton.lastHp dummy


team add w.noCollision
team modify w.noCollision collisionRule never

#declare tag w.newPlayer



scoreboard objectives add w.left custom:leave_game

#declare score_holder %isProduction