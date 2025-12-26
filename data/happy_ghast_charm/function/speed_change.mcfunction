#> happy_ghast_charm:speed_change
#
# ガストの速度変更処理
#
# @within tag/function minecraft:tick

# 乗ってれば加速
    execute as @s if predicate happy_ghast_charm:is_passanger run attribute @s minecraft:flying_speed base reset

# 乗られてなければ減速
    execute as @s unless predicate happy_ghast_charm:is_passanger run attribute @s minecraft:flying_speed base set 0.025
