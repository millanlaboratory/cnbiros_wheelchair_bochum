clearvars; clc;

x = 0:0.01:8;

obstacle_inflation  = 0.9;
goal_max_position   = 3;
goal_backward_limit = 1.0;

position = get_goal_position(x, obstacle_inflation, goal_backward_limit, goal_max_position);
plot(x, position);
xlim([min(x) - 0.5 max(x)+0.5]);
ylim([min(position) - 0.5 max(position)+0.5]);
grid on;
xlabel('Obstacle position [m]');
ylabel('Goal position [m]');

plot_vline(0, 'k');
plot_hline(0, 'k');

plot_hline(goal_max_position, 'r--', 'Goal max position');
plot_vline(goal_backward_limit, 'r--', 'Goal backward limit');


