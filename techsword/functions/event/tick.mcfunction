# UNUSED
#define score_holder #Math used for calculations

# Mark players using techsword mechanic tool
tag @a[tag=techsword] remove techsword
tag @a[nbt={SelectedItem:{tag:{Tags:["techsword"]}}}] add techsword

# Manage cooldown
scoreboard players remove @a[scores={techsword.attack_cooldown=1..}] techsword.attack_cooldown 1

# Manage push scores
scoreboard players remove @a[scores={techsword.push_timer=1..}] techsword.push_timer 1
scoreboard players reset @a[scores={techsword.push_timer=..0}] techsword.push_counter

# Detect sweeping-motion
execute as @a[tag=techsword] at @s run function techsword:utils/detect_sweeping_motion

# Manage input
function techsword:manage_input/north
function techsword:manage_input/south
function techsword:manage_input/east
function techsword:manage_input/west
function techsword:manage_input/up
function techsword:manage_input/down