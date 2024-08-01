data modify entity @s Invisible set value false
execute as @e[type=minecraft:interaction,distance=..0.5,nbt={Tags:["itemframer:interaction"], interaction:{}}] run data remove entity @s interaction