input = undefined;
instantiate_Action = undefined;
dash_action = undefined;


alarm_interval = 2.5;
alarm_bullet = 7.15;
alarm_dash = 1;


grid_width = 100;
grid_height = 80;

enum playerStates {idle, walking, shooting, dashing, skill};
player_action = playerStates.idle;
