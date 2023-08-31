scoreboard objectives add mob-abilities.math dummy

scoreboard players set %2 mob-abilities.math 2
scoreboard players set %3 mob-abilities.math 3
scoreboard players set %4 mob-abilities.math 4


#declare tag mob-abilities.dasher
scoreboard objectives add mob-abilities.dash.cooldown dummy
scoreboard objectives add mob-abilities.dash.preparation-colldown dummy
scoreboard objectives add mob-abilities.dash.dashing-ticks dummy


#declare tag mob-abilities.cobweb-thrower
#declare tag mob-abilities.cobweb-projectile
#declare tag mob-abilities.cobweb-marker
scoreboard objectives add mob-abilities.cobweb-throw.cooldown dummy
scoreboard objectives add mob-abilities.cobweb-throw.lifetime dummy
scoreboard objectives add mob-abilities.dx dummy
scoreboard objectives add mob-abilities.dy dummy
scoreboard objectives add mob-abilities.dz dummy



#declare tag mob-abilities.guard_forest
#declare tag ma.wave.marker
#declare tag ma.spores_cloud
#declare tag ma.warped_fungus_projectile
scoreboard objectives add ma.guard_forest.attack_cooldown dummy
scoreboard objectives add ma.wave.lifetime dummy
scoreboard objectives add ma.fungus_throw.lifetime dummy
scoreboard objectives add ma.fungus_throw.preparation_cooldown dummy
scoreboard objectives add ma.fungus_throw.counter dummy