#!/bin/bash

# Define the commands
commands=(
    "export ROS_DOMAIN_ID=30"
    "export TURTLEBOT3_MODEL=burger"
    "ros2 launch turtlebot3_bringup dingo.robot.launch.py"
    "ros2 run turtlebot3_teleop teleop_keyboard"
    "ros2 launch turtlebot3_cartographer cartographer.launch.py"
)

# Display menu and get user choice
echo "Select a command to run:"
for i in "${!commands[@]}"; do
    echo "$((i+1))) ${commands[$i]}"
done

read -p "Enter your choice (1-${#commands[@]}): " choice

if [[ "$choice" -ge 1 && "$choice" -le "${#commands[@]}" ]]; then
    selected_command="${commands[$((choice-1))]}"
    echo "Running command: $selected_command"
    eval "$selected_command"
else
    echo "Invalid choice. Exiting."
    exit 1
fi
