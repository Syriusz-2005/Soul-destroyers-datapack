advancement revoke @s only w:utils/target_hit

execute if score @s w.shooting_range.score matches 50.. run advancement grant @s only w:soul_destroyers/achievements/shooting_range_score_50
execute if score @s w.shooting_range.score matches 100.. run advancement grant @s only w:soul_destroyers/achievements/shooting_range_score_100
execute if score @s w.shooting_range.score > $Highscore w.shooting_range.score run advancement grant @s only w:soul_destroyers/achievements/shooting_range_new_highscore