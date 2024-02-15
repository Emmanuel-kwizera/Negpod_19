#!/bin/bash

source_dir="/path/to/source/directory"

destination_dir="/path/to/destination/directory"

remote_host="username@remote_host_ip"
password="your_password_here"

sshpass -p "$password" scp -r "$source_dir" "$remote_host:$destination_dir"



