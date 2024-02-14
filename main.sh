#!/bin/bash

# Function to create a student record
function create_student_record {
    read -p "Enter student ID: " student_id
    read -p "Enter student email: " email
    read -p "Enter student age: " age

    # Save student record in the file
    echo "$student_id, $email, $age" >> students-list_1023.txt

    # Print success message in green color
    printf "\n\033[32mStudent record created successfully.\033[0m\n"
}

# Function to view all students
function view_all_students {
    printf "\033[34mStudent records:\033[0m\n\n"

    printf "\033[34mID, Email, Age\033[0m\n"
    cat students-list_1023.txt
}

# Function to delete student record
function delete_student_record {
    read -p "Enter student ID to delete: " delete_id
    # sed -i "/\"$delete_id\"/d" students-list_1023.txt
    sed -i "" "/$delete_id/d" students-list_1023.txt
    printf "\n\033[32mStudent record deleted successfully.\033[0m\n"
}

# Function to update student record
function update_student_record {
    read -p "Enter student ID to update: " update_id
    read -p "Enter updated email: " updated_email
    read -p "Enter updated age: " updated_age

    # sed -i "/$update_id/c\\$updated_email, $updated_age, $update_id" students-list_1023.txt

    sed -i "" "s/^$update_id,.*/$update_id, $updated_email, $updated_age/" students-list_1023.txt

    # sed -i "" "/$update_id/c\\
    # $updated_email, $updated_age, $update_id" students-list_1023.txt

    printf "\n\033[32mStudent record updated successfully.\033[0m\n"
}

while true; do
    echo ""
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record"
    echo "4. Update student record"
    echo "5. Exit"
    read -p "Enter your choice: " choice
    echo ""

    case $choice in
        1)
            # Function to create student record
            create_student_record
            ;;
        2)
            # Function to view all students
            view_all_students
            ;;
        3)
            # Function to delete student record
            delete_student_record
            ;;
        4)
            # Function to update student record
            update_student_record
            ;;
        5)
            printf "\033[34mGoodbye!\033[0m\n"
            exit 0
            ;;
        *)
            printf "\033[31mInvalid choice. Please try again.\033[0m\n"
            ;;
    esac
done
