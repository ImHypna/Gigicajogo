#region movimentaçao
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

hvel = (right - left)*vel;
vvel = (down-up)*vel;

if global.dialogo == false{
mask_index = sprite[DOWN]
if vvel == 0{
	if right>0{face = RIGHT}
	if left>0{face=LEFT}
}
if hvel ==0{
	if down>0{face=DOWN}
	if up>0{face=UP}
}
	
sprite_index = sprite[face]


if place_meeting(x+hvel,y,obj_parede){
	while !place_meeting(x+sign(hvel),y,obj_parede){
		x+=hvel
	}
	hvel = 0
}



if place_meeting(x,y+vvel,obj_parede){
	while !place_meeting(x,y+sign(vvel),obj_parede){
		y+=vvel
	}
	vvel = 0
}

	x+=hvel
	y+=vvel
}
if hvel ==0 && vvel ==0{image_index = 0}
#endregion

#region dialogo

if distance_to_object(obj_par_npc)<=10{
if keyboard_check(ord("J")) and global.dialogo == false{
	var _npc =  instance_nearest(x,y,obj_par_npc);
	var _dialogo =  instance_create_layer(x,y,"Dialogo",obj_dialogo)
	_dialogo.npc_nome = _npc.nome;
}
}
#endregion dialogo


