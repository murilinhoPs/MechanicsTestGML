vidas = 3;
path = path_add();

action_timer = random_range(room_speed/2, room_speed);
idle_timer = room_speed;

instantiate_bullet = undefined;
shoot_timer = room_speed * 5;
inst_bullet = undefined;

#region walk
x_range_2 = undefined;
y_range_2 = undefined;

x_final =  undefined;
y_final = undefined;
#endregion

enum b_states {idle, walking, shooting, catching};
b_states = b_states.idle;

jogar_i = false;
ball_i = undefined;
i_num = 0;