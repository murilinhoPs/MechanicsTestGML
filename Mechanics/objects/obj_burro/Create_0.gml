vidas = 60;
path = path_add();

action_timer = random_range(room_speed/2, room_speed);
idle_timer = room_speed;

instantiate_bullet = undefined;
bullets_timer = 10;

#region walk
x_range = undefined;
y_range = undefined;

x_final =  undefined;
y_final = undefined;
#endregion

enum b_states {idle, walking, shooting};
b_states = b_states.idle;