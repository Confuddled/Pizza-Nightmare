var dead = instance_create_depth(x, y, 10, ob_baddiedead)
dead.sprite_index = sp_slimedead
audio_play_sound(sn_killenemy, 10, false)
global.enemies -= 1
