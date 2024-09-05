#> tusb_remake:load/update/1.0.1/schedule
# forceload後などに実行するfunction

# 無限終玉をアップデート
data modify entity 3fb23272-cdf2-44b8-9bd3-8ad4d58dec03 Offers.Recipes[10].sell set value {id: "minecraft:ender_pearl", Count: 1b, tag: {Undying: 1b, display: {Lore: ['{"text":"§r§5奈落より生まれた、虚無の終玉"}', '{"text":"§r§5何度投げようとも、この終玉は虚無から現れる"}', '{"text":"§r§5利き手のみ対応"}'], Name: '{"text":"無限終玉","color":"#8000FF","bold":true,"italic":false,"underlined":true}'}, Enchantments: [{lvl: 10s, id: "minecraft:infinity"}]}}
# 無限雪玉もアップデート
data modify entity 3fb23272-cdf2-44b8-9bd3-8ad4d58dec03 Offers.Recipes[11].sell set value {id: "minecraft:snowball", Count: 4b, tag: {Undying: 1b, display: {Lore: ['{"text":"§r§f氷結世界より生まれた、無限の雪玉"}', '{"text":"§r§f投げたその瞬間には次の雪玉が現れている"}', '{"text":"§r§f利き手のみ対応"}'], Name: '{"text":"無限雪玉","color":"#FFFFFF","bold":true,"italic":false,"underlined":true}'}, Enchantments: [{lvl: 10s, id: "minecraft:infinity"}]}}
# Undyingについての研究を追加
    execute unless data entity 3fb23272-cdf2-44b8-9bd3-8ad4d58dec03 Offers.Recipes[12] run data modify entity 3fb23272-cdf2-44b8-9bd3-8ad4d58dec03 Offers.Recipes append value {}
    data modify entity 3fb23272-cdf2-44b8-9bd3-8ad4d58dec03 Offers.Recipes[12] set value {maxUses: 2147483647, buyB: {id: "minecraft:sea_lantern", Count: 4b, tag: {HideFlags: 1, display: {Lore: ['{"text":"トカルトコルデの現宝通貨"}'], Name: '{"text":"ブラード氷晶貨","color":"aqua","italic":false,"underlined":true}'}, Enchantments: [{lvl: 1s, id: "minecraft:luck_of_the_sea"}]}}, buy: {id: "minecraft:pufferfish", Count: 64b, tag: {display: {Name: '{"text":"高級河豚","color":"gold","bold":true,"italic":false}'}}}, sell: {id: "minecraft:written_book", Count: 1b, tag: {generation: 1, pages: ['{"text":"無限終玉、別世界で見つけた不思議なアイテムだ\\n投げても投げても、この手には残っている\\nしかしとても繊細で、些細な弾みで消滅してしまう\\n私はこのアイテムに魅力を感じ、研究を始めた\\nそれからすぐに、この世界とあの世界では流れる法則が違うことに気がついた\\nこの世界に持ってきた瞬間に、あのアイテムは消え失せてしまう"}', '{"text":"だから私は、あのアイテムを再現することにした\\n\\n...しばらくして、私は無限終玉の再現に成功した\\nただし、それはとても完璧なものとはいえない\\n元の無限終玉のような繊細さはないが、それと遜色ないほどには良く消えてしまう\\n更に研究を重ねる"}', '{"text":"それからは思いの外、すぐに改善に成功した\\nそうそう消えることはなくなったのだ\\nもっとも、本来消えて欲しい時にも消えないのは少々問題かもしれないが...\\nまだ問題は残っている\\n利き手に持った時にしか作動しないのだ\\nこれを解決してこそ、完成と言えるだろう"}', '{"text":""}', '{"text":"システム解説\\n\\nメインハンドからアイテムが消えた時に、それが捨てられていないか、チェストなどを開いていないか、インベントリの他の位置に移動していないか、カーソルに持ち上げられていないかを検知して、\\nどれにも当てはまらなかった場合に、アイテムを渡している"}', '{"text":"つまり...これらの条件を全て掻い潜れば、実際には使用していなくても使っているということにできるわけだ\\n即ち、増殖である"}'], author: "§kmocope", display: {Lore: ['{"text":"とある研究者の手記"}', '{"text":"中には§kアイテム増殖§rに関する情報が含まれている"}', '{"text":"そのため、とても高価"}'], Name: '{"text":"Undying","color":"#8000FF","bold":true,"italic":false}'}, title: "§kmocope§rの手記", resolved: 1b}}, xp: 0, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}

# 残っているアイテムホルダーを削除
kill @e[tag=ItemHolder]

# 超作業台を更新
place template minecraft:sagyou -2737 70 -392

# れんとさんを修正
    execute in overworld positioned -80 15 20 run data modify entity @e[type=minecraft:villager,nbt={ArmorItems:[{},{},{},{tag:{SkullOwner:{Name:"satori_rento"}}}]},limit=1,distance=..32] {Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 48.0d, Name: "minecraft:generic.follow_range"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 0.0d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor"}, {Base: 0.0d, Name: "minecraft:generic.knockback_resistance"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 151, LastGossipDecay: 16355614L, HandDropChances: [0.085f, 0.0f], PersistenceRequired: 1b, Tags: ["TypeChecked", "ShieldTried"], Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Health: 20.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Offers: {Recipes: [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 10b}, sell: {id: "minecraft:player_head", Count: 1b, tag: {RepairCost: 1000000000, SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0NTk0MzQxMjI1MTUsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInNpZ25hdHVyZVJlcXVpcmVkIjp0cnVlLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjVjMjU2ZWJjM2JhZDI5ZTNiYWYwYTBhZmI5M2I5MTE2N2U3NjZiZGMyODU1YTljZDcxZjg3ZTg2NTg3ZGM5In19fQ=="}]}, Id: [I; 0, 202, 0, 1]}, AttributeModifiers: [{Slot: "head", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 3, 0, 1], Amount: 7.0d, Name: "DEF+"}, {Slot: "head", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 3, 0, 2], Amount: 0.7d, Name: "DEF+"}], display: {Name: '{"text":"§7§l剣士の魂"}'}, Enchantments: [{lvl: 7s, id: "minecraft:protection"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 10b}, sell: {id: "minecraft:player_head", Count: 1b, tag: {RepairCost: 1000000000, SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0NTk0MzQyNTgxNjAsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9kNjQ1NDJlOWZmYzFjMDg0N2I2MDExM2UxNjFmODNhZWZlMmQ4NzJiNTFiMmU0NzQ1MWUxODZlZTlhYWVkNjkifX19"}]}, Id: [I; 0, 202, 0, 2]}, AttributeModifiers: [{Slot: "head", AttributeName: "generic.attack_damage", Operation: 0, UUID: [I; 0, 3, 0, 1], Amount: 7.0d, Name: "ATK+"}, {Slot: "head", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 3, 0, 2], Amount: 0.7d, Name: "ATS+"}], display: {Name: '{"text":"§4§l忍者の魂"}'}, Enchantments: [{lvl: 7s, id: "minecraft:protection"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 10b}, sell: {id: "minecraft:player_head", Count: 1b, tag: {RepairCost: 1000000000, SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0NTk0MzQzOTU2MjQsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS80ZTQxOTE3OGQyNTM3MzNkY2EzMjRjZmQ5NTc0MzNmNzRiOTkwOTAzZDRkMjZmYmIyNmFiNDNkZjM5ZjNjY2QifX19"}]}, Id: [I; 0, 202, 0, 3]}, display: {Name: '{"text":"§2§l狩人の魂"}'}, Enchantments: [{lvl: 7s, id: "minecraft:protection"}, {lvl: 7s, id: "minecraft:projectile_protection"}, {lvl: 7s, id: "minecraft:depth_strider"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 10b}, sell: {id: "minecraft:player_head", Count: 1b, tag: {RepairCost: 1000000000, SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0NTk0MzQ0OTAxNTUsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9mZmFmZGRmODZkNTVkY2Y4ZWQ5MTY3MWI3MTlkMzkwZWU2YzZjNTY4NWNlNWIyM2NhZjJjYjlkOWUyN2NmOGYifX19"}]}, Id: [I; 0, 202, 0, 4]}, AttributeModifiers: [{Slot: "head", AttributeName: "generic.max_health", Operation: 0, UUID: [I; 0, 3, 0, 1], Amount: 7.0d, Name: "HP+"}], display: {Name: '{"text":"§f§l白魔導士の魂"}'}, Enchantments: [{lvl: 7s, id: "minecraft:protection"}, {lvl: 7s, id: "minecraft:blast_protection"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 10b}, sell: {id: "minecraft:player_head", Count: 1b, tag: {RepairCost: 1000000000, SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0NTk0MzUxMjc5OTQsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS85OTVkMTNlNGI5ODhjNzVjNGFhMTVhYjc1N2M0ZjJhY2FmMzBkNGE2ZjRlZDdkNGVlM2ZhY2VmNWM0OTIifX19"}]}, Id: [I; 0, 202, 0, 5]}, display: {Name: '{"text":"§9§l黒魔導士の魂"}'}, Enchantments: [{lvl: 7s, id: "minecraft:protection"}, {lvl: 7s, id: "minecraft:fire_protection"}, {lvl: 7s, id: "minecraft:respiration"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 10b}, sell: {id: "minecraft:player_head", Count: 1b, tag: {RepairCost: 1000000000, SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0NTk0MzUzMzU1NTIsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9mYWY1NTA1OWI3NzkzMzc4YTdkM2E1YWVmNzllZjBlZGY0YzE0OGMzODBhMTk3MjYwMjNhNTQ1MjQxZjc2OTIifX19"}]}, Id: [I; 0, 202, 0, 6]}, display: {Name: '{"text":"§e§l召喚士の魂"}'}, Enchantments: [{lvl: 7s, id: "minecraft:protection"}, {lvl: 7s, id: "minecraft:feather_falling"}, {lvl: 7s, id: "minecraft:aqua_affinity"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: 1000000000, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "cs", Color: 7}, {Pattern: "mr", Color: 15}, {Pattern: "cr", Color: 8}, {Pattern: "gra", Color: 8}, {Pattern: "mc", Color: 0}, {Pattern: "flo", Color: 7}], Base: 8, id: "minecraft:banner"}, display: {Lore: ['{"text":"§9剣士に馴染みやすい盾。"}'], Name: '{"text":"§7§l剣士の盾"}'}, Enchantments: [], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: 0.1d, Name: "KB"}, {Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: 0.1d, Name: "AMR"}, {Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: 0.1d, Name: "KB"}, {Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: 0.1d, Name: "AMR"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: 1000000000, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "cr", Color: 12}, {Pattern: "tts", Color: 14}, {Pattern: "bts", Color: 14}, {Pattern: "mr", Color: 14}, {Pattern: "cbo", Color: 15}, {Pattern: "sku", Color: 15}], Base: 15, id: "minecraft:banner"}, display: {Lore: ['{"text":"§9忍者に馴染みやすい盾。"}'], Name: '{"text":"§4§l忍者の盾"}'}, Enchantments: [], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: 0.1d, Name: "ATK"}, {Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: 0.1d, Name: "ATS"}, {Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: 0.1d, Name: "ATK"}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: 0.1d, Name: "ATS"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: 1000000000, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "flo", Color: 15}, {Pattern: "sc", Color: 15}, {Pattern: "flo", Color: 13}, {Pattern: "cr", Color: 13}, {Pattern: "sku", Color: 15}, {Pattern: "tts", Color: 13}, {Pattern: "gru", Color: 7}], Base: 13, id: "minecraft:banner"}, display: {Lore: ['{"text":"§9狩人に馴染みやすい盾。"}'], Name: '{"text":"§2§l狩人の盾"}'}, Enchantments: [], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: 0.1d, Name: "SPD"}, {Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: 0.1d, Name: "KB"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: 0.1d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: 0.1d, Name: "KB"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: 1000000000, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "cr", Color: 0}, {Pattern: "tts", Color: 0}, {Pattern: "bts", Color: 0}, {Pattern: "cbo", Color: 0}], Base: 11, id: "minecraft:banner"}, display: {Lore: ['{"text":"§9白魔導士に馴染みやすい盾。"}'], Name: '{"text":"§f§l白魔導士の盾"}'}, Enchantments: [], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: 0.1d, Name: "HP"}, {Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: 0.1d, Name: "AMR"}, {Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: 0.1d, Name: "HP"}, {Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: 0.1d, Name: "AMR"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: 1000000000, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "gra", Color: 7}, {Pattern: "gru", Color: 15}, {Pattern: "dls", Color: 8}, {Pattern: "drs", Color: 8}, {Pattern: "cr", Color: 10}, {Pattern: "mr", Color: 10}, {Pattern: "mc", Color: 2}, {Pattern: "flo", Color: 8}], Base: 7, id: "minecraft:banner"}, display: {Lore: ['{"text":"§9黒魔導士に馴染みやすい盾。"}'], Name: '{"text":"§8§l黒魔導士の盾"}'}, Enchantments: [], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: 0.1d, Name: "HP"}, {Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: 0.1d, Name: "ATK"}, {Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: 0.1d, Name: "HP"}, {Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: 0.1d, Name: "ATK"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: 1000000000, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "cs", Color: 0}, {Pattern: "cr", Color: 3}, {Pattern: "gra", Color: 13}, {Pattern: "bts", Color: 15}, {Pattern: "cre", Color: 15}, {Pattern: "cbo", Color: 15}], Base: 11, id: "minecraft:banner"}, display: {Lore: ['{"text":"§9召喚士に馴染みやすい盾。"}'], Name: '{"text":"§6§l召喚士の盾"}'}, Enchantments: [], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: 0.1d, Name: "SPD"}, {Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: 0.1d, Name: "ATS"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: 0.1d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: 0.1d, Name: "ATS"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:iron_sword", Count: 1b, tag: {Damage: 0, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 0, UUID: [I; 0, 1, 0, 1], Amount: 15.0d, Name: "AttackPlus"}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 0, UUID: [I; 0, 1, 0, 2], Amount: -3.0d, Name: "AtkSpeedPlus"}, {Slot: "mainhand", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 1, 0, 3], Amount: 10.0d, Name: "ArmorPlus"}], display: {Lore: ['{"text":"§r幅広い剣身で攻撃を受け止める大剣"}'], Name: '{"text":"§r§l剣士の大剣"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:iron_axe", Count: 1b, tag: {Damage: 0, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 0, UUID: [I; 0, 1, 0, 1], Amount: 5.0d, Name: "AttackPlus"}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 0, UUID: [I; 0, 1, 0, 2], Amount: 4.0d, Name: "AtkSpeedPlus"}], display: {Lore: ['{"text":"§r素早い動きを阻害しないよう"}', '{"text":"§r軽さに拘って作られた小太刀"}'], Name: '{"text":"§r§l忍者の小太刀"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:bow", Count: 1b, tag: {Damage: 0, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.luck", Operation: 0, UUID: [I; 0, 1, 0, 1], Amount: 2.0d, Name: "LuckPlus"}, {Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 0, UUID: [I; 0, 1, 0, 2], Amount: 0.2d, Name: "LuckPlus"}], display: {Lore: ['{"text":"§r神木の落枝から削って作られた"}', '{"text":"§r幸運をもたらすとされる弓"}'], Name: '{"text":"§r§l狩人の弓"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Damage: 0, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.max_health", Operation: 0, UUID: [I; 0, 1, 0, 1], Amount: 12.0d, Name: "HealthPlus"}, {Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 2], Amount: 0.25d, Name: "HealthPlus"}], display: {Lore: ['{"text":"§r森の香りが心地よい"}', '{"text":"§r持つ者の生命力を増幅させる杖"}'], Name: '{"text":"§r§l白魔導士のクロージャ"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Damage: 0, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 0, UUID: [I; 0, 1, 0, 1], Amount: 10.0d, Name: "AttackPlus"}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 0, UUID: [I; 0, 1, 0, 2], Amount: -1.0d, Name: "AtkSpeedPlus"}], display: {Lore: ['{"text":"§rマナがなければ殴ればいいじゃない"}', '{"text":"§rというコンセプトで作られた鈍器"}'], Name: '{"text":"§r§l黒魔導士のメイス"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Damage: 0, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 1, UUID: [I; 0, 1, 0, 1], Amount: 1.0d, Name: "SpeedPlus"}, {Slot: "mainhand", AttributeName: "generic.max_health", Operation: 1, UUID: [I; 0, 1, 0, 2], Amount: 0.1d, Name: "HealthPlus"}], display: {Lore: ['{"text":"§r美味しそうな香りを放つ"}', '{"text":"§rどこまでも走れそうに思わせる杖"}'], Name: '{"text":"§r§l召喚士のタクト"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]}, HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"§b§lれんと"}', Fire: -1s, ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0NzQ2MzEzNzYzOTUsInByb2ZpbGVJZCI6IjZlZTg5Zjg3OTEzNDQxZTJhMWU4MmM4ODEwZTYwYmQ3IiwicHJvZmlsZU5hbWUiOiJzYXRvcmlfcmVudG8iLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJtZXRhZGF0YSI6eyJtb2RlbCI6InNsaW0ifSwidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS80ZGIxZDc3OGQ2NGU2YWNhZjY0NzIyMDY1ZDU3ZjNkNzY1NjI2YWIyMzc1MmU0MzZjZGMyZTE2NDRjZDBhNCJ9fX0=", Signature: "FM2IcrphEl/Fz83gJq/RmUGgIOjP7bjDxN9ibKZwVKXrtnx/DN05Jw/7O+pS/WHbmK+RHRdS43GeBvZJsdaYcG5z6dEzhN0/8M2AfU12Z/PsLVJKfIyxtPWdZosMuHhug0RLnmuj68zUnB8UCge2Emyuaf06LAZvbAgCP+XRyZbIW09yv/EwBSXx5iS4zp52oRFjBKYQeC3N/0OvImxcULiCk0WoZStutpPvD+lw9lo0bPJC8T6xugEhEFqfwhoRk+FymH86O96BQQW9GOmkRnkdVVxNOe2hjLOu7d2smRCTT8SXAL/pOs+nX1WWPVN7HR3J81rlTcn4S1oD5UkUH++ryxEzlZIgdKim4EUPP+pWRM3kR+MNZZc/RYYKVNvIUZYcQfZLkCrsmdwYAodIuGQ0ujCqPJ6+oTNPWcdZeV8BlKp+KN6PYEL/ClXKNgYYaemEA2v2G+LX/b4iOGbID8oD2sZgh83GGvX+wEURKtYFPT28E2K/tG9oZnhBHnYI3YRMm12qlu7bxkakhHv+ThkaTspHBoUBccuFVqkk9cjYmWayC7GJV0Qz7aSm0R3DgHwplKNMvR/vBdkUeCrttBimAzJxDs59VY6f3fMzikllWCwURcFPZ/FGhA41v8AFDhotIzJCP4Lv5GX+UW0Jxuxch16C4YG1QhDVnUorIWs="}]}, Id: [I; 1860738951, -1858846238, -1578619768, 283511767], Name: "satori_rento"}, display: {Name: '{"text":"§b§lれんと"}'}, ID: "6ee89f87-9134-41e2-a1e8-2c8810e60bd"}}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:farmer", level: 2000019, type: "minecraft:plains"}, HurtTime: 0s, Inventory: []}

# シュルカーボックス配置
    execute in the_nether run setblock 3500 0 3500 lime_shulker_box
    execute in the_end run setblock 3500 0 3500 lime_shulker_box

# forceloadを消す
execute in overworld run forceload remove 0 0 0 0
execute in overworld run forceload remove -2727 -374 -2721 -372

# 通知
tellraw @a {"translate": "§4§l[Update-Program]ver1.0.1へのアップデートが完了しました"}