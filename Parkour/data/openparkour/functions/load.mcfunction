tellraw @p {"text":"Open parkour by MaximumMaxx","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/MaximumMaxxx/Open-Parkour"}}

#setting up scoreboards for counting
scoreboard objectives add LeaderBoardSecs dummy
scoreboard objectives add LeaderBoardTicks dummy
scoreboard objectives add IsTiming dummy
scoreboard objectives add PlayerTiming dummy
scoreboard objectives add NumberStorage dummy
scoreboard objectives add Saved dummy
scoreboard players set 1 NumberStorage 1
scoreboard players set 20 NumberStorage 20
scoreboard players set 0 NumberStorage 0
