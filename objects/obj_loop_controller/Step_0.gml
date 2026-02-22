timer--;

if (timer <= 0)
{
    var p = instance_find(obj_player, 0);

    p.x = p.spawn_x;
    p.y = p.spawn_y;

    timer = loop_time;
}