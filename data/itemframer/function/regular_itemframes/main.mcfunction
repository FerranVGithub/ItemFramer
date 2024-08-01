#summon
execute as @a at @s if items entity @s weapon.mainhand stick[minecraft:custom_data={itemframer:stick}] at @e[type=minecraft:item_frame,distance=..6] unless entity @e[type=minecraft:interaction,distance=..0.5] run summon minecraft:interaction ~ ~-0.4 ~ {width:0.8,height:0.8,Tags:["itemframer:interaction"]}


#make invisible
execute at @e[type=minecraft:interaction,nbt={Tags:["itemframer:interaction"],interaction:{},}] as @n[type=item_frame,distance=..0.5,nbt={Invisible:false, Item:{}}] run function itemframer:regular_itemframes/invisible with entity @s
#make revisible
execute at @e[type=minecraft:interaction,nbt={Tags:["itemframer:interaction"],interaction:{}}] as @n[type=item_frame,distance=..0.5,nbt={Invisible:true, Item:{}}] run function itemframer:regular_itemframes/revisible with entity @s
execute as @e[type=minecraft:item_frame,nbt={Invisible:true}] if entity @s[nbt=!{Item:{}}] run data modify entity @s Invisible set value false

#killing
execute at @a[nbt=!{SelectedItem:{id:"minecraft:stick", components: {"minecraft:custom_data": {itemframer: "stick"}}}}] as @e[type=minecraft:interaction,distance=..6,nbt={Tags:["itemframer:interaction"]}] at @s unless entity @a[distance=..6,nbt={SelectedItem:{id:"minecraft:stick", components: {"minecraft:custom_data": {itemframer: "stick"}}}}] run kill @s 
execute at @a as @e[type=minecraft:interaction,distance=6..7] at @s unless entity @e[type=minecraft:player,distance=..6] run kill @s