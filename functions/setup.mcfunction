gamerule sendcommandfeedback false
gamerule commandblockoutput false
gamerule doimmediaterespawn true
tickingarea add ~-2 310 ~-2 ~2 320 ~2 tick
fill ~-2 310 ~-2 ~2 310 ~2 barrier
summon armor_stand "oper" ~ 311 ~
tag @e[type=armor_stand,name=oper] add oper
tp @s ~-1 311 ~-1
tellraw @s {"rawtext":[{"text":"§l§b해당 위치에 반복커맨드 (무조건, 항상사용) 으로 설정 후, 명령어에 `function repeat` 를 설정해주세요!"}]}
tellraw @s {"rawtext":[{"text":"§l§e그 후, 여러 다양한 방식으로 `function add_life` 가 작동되게 설정해주시면 돼요!"}]}
scoreboard objectives add DeathEvent dummy
scoreboard objectives add Life dummy
scoreboard players set @e[type=armor_stand,tag=oper] Life 0