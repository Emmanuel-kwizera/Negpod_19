#!/bin/bash


# Function to create student record
function create_student_record {
    read -p "Enter student email: " email
    read -p "Enter student age: " age
    read -p "Enter student ID: " student_id

    # Save student record in file
    echo "$email, $age, $student_id" >> students-list_1023.txt

    # Print success message in green color
    echo -e "Student record created successfully"
}

# Function to view all students
function view_all_students {
    echo "Student Email, Age, Student ID"
    cat students-list_1023.txt
}

# Function to delete student record
function delete_student_record {
    read -p "Enter student ID to delete: " delete_id
    # sed -i "/\"$delete_id\"/d" students-list_1023.txt
    sed -i "" "/$delete_id/d" students-list_1023.txt
}

# Function to update student record
function update_student_record {
    read -p "Enter student ID to update: " update_id
    read -p "Enter updated email: " updated_email
    read -p "Enter updated age: " updated_age

    # sed -i "/$update_id/c\\$updated_email, $updated_age, $update_id" students-list_1023.txt
    
    sed -i "" "/$update_id/c\\
    $updated_email, $updated_age, $update_id" students-list_1023.txt
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
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done