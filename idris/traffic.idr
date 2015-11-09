module traffic

data light = red | green | amber

nextColor: light -> light
nextColor red = green
nextColor green = amber



