function position = get_goal_position(obstacle_pos, obstacle_inflation, goal_backward_limit,  goal_max_position)

       x2 = 2.0;
       y2 = x2 - obstacle_inflation;
       
       x1 = 1.0;
       y1 = x1 - obstacle_inflation;
       
       
       m = (y2 - y1)/(x2 - x1);
    
       b = y1 -m.*x1;
       
       
       position = m.*obstacle_pos + b;
       

       
       
       position(position > goal_max_position) = goal_max_position;
   

       position(obstacle_pos < goal_backward_limit) = -0.5;


end