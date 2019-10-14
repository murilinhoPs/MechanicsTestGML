vidas = 100;
path = path_add();
timer = room_speed + 10;

enum state {idle, walking, shooting, escaping};
state = state.idle;

#region WalkArea

x_range = undefined;
y_range = undefined;

x_goal =  undefined;
y_goal = undefined;

#endregion

alarm[0] = timer;