#> asset:mob/0890.buri/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:1}の部分を作るmobのidに変える(例(デイドラ):asset:context {id:10})
execute if data storage asset:context {id:890} run function asset:mob/0890.buri/summon/2.summon
# functionの0000.exampleの変えたフォルダの名前にする(例:0010.deadra)
