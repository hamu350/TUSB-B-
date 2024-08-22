#> tusb_remake:spawner/update/
# スポナーのentityを置き換え

# スポナーのデータを取得
function tusb_remake:spawner/update/get_info/

# SpawnerIdが-1の場合は複数湧き、1以上の場合は単体湧き
execute if score @s SpawnerId matches -1 unless data storage asset:context {spawner:{SpawnData:{entity:{id:"minecraft:pig"}}}} run function tusb_remake:spawner/update/multi/
execute if score @s SpawnerId matches 1.. unless data storage asset:context {spawner:{SpawnData:{entity:{id:"minecraft:pig"}}}} run function tusb_remake:spawner/update/single/

# contextを削除
data remove storage asset:context id
data remove storage asset:context new_spawner

# 最後に更新済みにする
scoreboard players operation @s SpawnerUpdate = _ SpawnerUpdate