#!/bin/bash

source_dir="./Negpod_id-q1"

destination_dir="/summative/1023-2024j"

remote_host="2f05c1f8800b@2f05c1f8800b.3be8ebfc.alu-cod.online"
password="d4a1d225d0abda9549d8"

sshpass -p "$password" scp -r "$source_dir" "$remote_host:$destination_dir"



