def right():
    turn_left()
    turn_left()
    turn_left()
    
def finding_the_solution():
    while front_is_clear():
        move()
    if right_is_clear() and not at_goal():
        right()
    
        
    
    
while not at_goal():
    if front_is_clear():
        finding_the_solution()
    else:
        turn_left()
    if wall_in_front() and wall_on_right():
            turn_left()
################################################################
# WARNING: Do not change this comment.
# Library Code is below.
################################################################
