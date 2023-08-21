

execute store result score %w.poc-guardian.moveX w.internal run data get entity @e[tag=w.poc-guardian,sort=nearest,limit=1] Motion[0] 100
execute store result score %w.poc-guardian.moveZ w.internal run data get entity @e[tag=w.poc-guardian,sort=nearest,limit=1] Motion[2] 100


execute if score %w.poc-guardian.moveX w.internal matches 1.. run function animated_java:guardian_poc/animations/move/resume
execute if score %w.poc-guardian.moveZ w.internal matches 1.. run function animated_java:guardian_poc/animations/move/resume

execute if score %w.poc-guardian.moveX w.internal matches ..-1 run function animated_java:guardian_poc/animations/move/resume
execute if score %w.poc-guardian.moveZ w.internal matches ..-1 run function animated_java:guardian_poc/animations/move/resume

execute if score %w.poc-guardian.moveZ w.internal matches 0 if score %w.poc-guardian.moveX w.internal matches 0 run function animated_java:guardian_poc/animations/pause_all