gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule locatorBar false
gamerule doDaylightCycle false
time set 23300
tellraw @a [{color:"#00FF00",bold:true,text:"«code»"}, {color: "#00FF00", text: " is load", bold:false}]
execute as @a run attribute @s movement_speed base reset
execute as @a run effect clear @s saturation

#hahaha