data modify storage bs:ctx _ set value {transformation:[1f,0f,0f,-0.5f,0f,1f,0f,0f,0f,0f,1f,-0.5f,0f,0f,0f,1f],Passengers:[{id:"minecraft:shulker",active_effects:[{id:"invisibility",Amplifier:1b,duration:-1,show_particles:0b}],AttachFace:0b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}]}
data modify storage bs:ctx _ merge from storage bs:in block.spawn_solid_block_display.nbt
data modify storage bs:ctx _.block_state.Name set from storage bs:in block.spawn_solid_block_display.type
data modify storage bs:ctx _.block_state.Properties set from storage bs:in block.spawn_solid_block_display.properties

function bs.block:spawn/block_display/run with storage bs:ctx
