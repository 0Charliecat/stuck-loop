// INPUT
var move = keyboard_check(vk_right) - keyboard_check(vk_left);

hsp = move * move_speed;

// gravity
vsp += grav;


// JUMP
if (place_meeting(x, y + 1, obj_solid))
{
    if (keyboard_check_pressed(vk_space))
    {
        vsp = jump_speed;
    }
}


// HORIZONTAL COLLISION
if (place_meeting(x + hsp, y, obj_solid))
{
    while (!place_meeting(x + sign(hsp), y, obj_solid))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;


// VERTICAL COLLISION
if (place_meeting(x, y + vsp, obj_solid))
{
    while (!place_meeting(x, y + sign(vsp), obj_solid))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;