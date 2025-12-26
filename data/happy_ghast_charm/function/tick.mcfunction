#> happy_ghast_charm:tick
#
# メインのtick処理
#
# @within function happy_ghast_charm:speed_change

# ハッピーガストの装備を確認
    execute as @e[type=minecraft:happy_ghast] at @s if data entity @s equipment.chest{id:"minecraft:diamond_horse_armor"} run function happy_ghast_charm:speed_change

# 外されてたら元の速度に
    execute as @e[type=minecraft:happy_ghast] at @s unless data entity @s equipment.chest{id:"minecraft:diamond_horse_armor"} run attribute @s minecraft:flying_speed base reset
