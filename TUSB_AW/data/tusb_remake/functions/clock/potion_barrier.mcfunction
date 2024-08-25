#> tusb_remake:clock/potion_barrier
# ボスチームに近付いたポーションが発動するfunction

data modify storage _: _ set from entity @s Item.tag.CustomPotionEffects

execute if data storage _: {_:[{Id:7,Amplifier:10b}]} run data modify storage _: _ set value true
execute if data storage _: {_:[{Id:6,Amplifier:10b}]} run data modify storage _: _ set value true
execute if data storage _: {_:[{Id:7,Amplifier:29b}]} run data modify storage _: _ set value true
execute if data storage _: {_:[{Id:6,Amplifier:29b}]} run data modify storage _: _ set value true

execute if data storage _: {_:true} as @e[limit=1,sort=nearest,team=Boss] run me はポーションを無効化した！
execute if data storage _: {_:true} run kill @s