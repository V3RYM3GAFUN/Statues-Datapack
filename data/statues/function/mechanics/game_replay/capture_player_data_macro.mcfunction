execute unless function statues:feature_flags/check_game_replay_flags run return fail
data modify storage statues:temp player_data set from entity @s

$execute store success score $CommandSuccess Statues.TempData run data modify storage statues:game_replay current_replay.player_data[$(index)].position set from storage statues:temp player_data.Pos
$execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame append value {frame_type:0,content:{player:$(index)}}
execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame[-1].content.position set from storage statues:temp player_data.Pos

$execute store success score $CommandSuccess Statues.TempData run data modify storage statues:game_replay current_replay.player_data[$(index)].rotation set from storage statues:temp player_data.Rotation
$execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame append value {frame_type:1,content:{player:$(index)}}
execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame[-1].content.rotation set from storage statues:temp player_data.Rotation


data modify storage statues:game_replay update_data.team set value 0
execute if entity @s[team=Dev] run data modify storage statues:game_replay update_data.team set value 1
execute if entity @s[team=Survivor] run data modify storage statues:game_replay update_data.team set value 2
execute if entity @s[team=Monster] run data modify storage statues:game_replay update_data.team set value 3
execute if entity @s[team=Spectator] run data modify storage statues:game_replay update_data.team set value 4

$execute store success score $CommandSuccess Statues.TempData run data modify storage statues:game_replay current_replay.player_data[$(index)].team set from storage statues:game_replay update_data.team
$execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame append value {frame_type:4,content:{player:$(index)}}
execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame[-1].content.team set from storage statues:game_replay update_data.team


data modify storage statues:game_replay item set value {}
data modify storage statues:game_replay item set from storage statues:temp player_data.SelectedItem
$execute store success score $CommandSuccess Statues.TempData run data modify storage statues:game_replay current_replay.player_data[$(index)].main_item set from storage statues:game_replay item
$execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame append value {frame_type:7,content:{player:$(index)}}
execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame[-1].content.item set from storage statues:game_replay item


data modify storage statues:game_replay item set value {}
data modify storage statues:game_replay item set from storage statues:temp player_data.Inventory[{Slot:-106b}]
$execute store success score $CommandSuccess Statues.TempData run data modify storage statues:game_replay current_replay.player_data[$(index)].offhand_item set from storage statues:game_replay item
$execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame append value {frame_type:8,content:{player:$(index)}}
execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame[-1].content.item set from storage statues:game_replay item


data modify storage statues:game_replay item set value {}
data modify storage statues:game_replay item set from storage statues:temp player_data.Inventory[{Slot:103b}]
$execute store success score $CommandSuccess Statues.TempData run data modify storage statues:game_replay current_replay.player_data[$(index)].helmet_item set from storage statues:game_replay item
$execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame append value {frame_type:9,content:{player:$(index)}}
execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame[-1].content.item set from storage statues:game_replay item

data modify storage statues:game_replay item set value {}
data modify storage statues:game_replay item set from storage statues:temp player_data.Inventory[{Slot:102b}]
$execute store success score $CommandSuccess Statues.TempData run data modify storage statues:game_replay current_replay.player_data[$(index)].leggings_item set from storage statues:game_replay item
$execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame append value {frame_type:10,content:{player:$(index)}}
execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame[-1].content.item set from storage statues:game_replay item

data modify storage statues:game_replay item set value {}
data modify storage statues:game_replay item set from storage statues:temp player_data.Inventory[{Slot:101b}]
$execute store success score $CommandSuccess Statues.TempData run data modify storage statues:game_replay current_replay.player_data[$(index)].chestplate_item set from storage statues:game_replay item
$execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame append value {frame_type:11,content:{player:$(index)}}
execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame[-1].content.item set from storage statues:game_replay item

data modify storage statues:game_replay item set value {}
data modify storage statues:game_replay item set from storage statues:temp player_data.Inventory[{Slot:100b}]
$execute store success score $CommandSuccess Statues.TempData run data modify storage statues:game_replay current_replay.player_data[$(index)].boots_item set from storage statues:game_replay item
$execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame append value {frame_type:12,content:{player:$(index)}}
execute if score $CommandSuccess Statues.TempData matches 1 run data modify storage statues:game_replay current_replay.current_frame[-1].content.item set from storage statues:game_replay item

