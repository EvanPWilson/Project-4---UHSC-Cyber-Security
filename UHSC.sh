#!/bin/bash

# Define the target directory
target_directory="/home/sysadmin/Downloads/UserHistoryCollection"

# Create the directory if it doesn't exist
mkdir -p "$target_directory"

username=$1

# Define the path to the user's command history file
history_file_path="/home/$username/.bash_history"

# Target file where you want to append the history
current_time=$(date "+%Y-%m-%d_%H-%M-%S")
target_file="${target_directory}/userhistory_${username}_${current_time}.txt"

# Check if the history file exists then append its content to the target file
if [ -f "$history_file_path" ]; then
        cat "$history_file_path" >> "$target_file"
        echo "Command history appended to $target_file"
else
        echo "History file does not exist or cannot be accessed."

fi
