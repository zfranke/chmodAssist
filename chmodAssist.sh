#!/bin/bash

show_chmod_numbers() {
    # Function to display numeric chmod permissions
    echo "Numeric Permissions:"
    echo "0: No permission"
    echo "1: Execute permission"
    echo "2: Write permission"
    echo "3: Execute + Write permission"
    echo "4: Read permission"
    echo "5: Read + Execute permission"
    echo "6: Read + Write permission"
    echo "7: Read + Write + Execute permission"
    echo
    echo "Numeric Permission Representation:"
    echo "The first digit represents the owner's permission"
    echo "The second digit represents the group's permission"
    echo "The third digit represents others' permission"
}

show_chmod_symbols() {
    # Function to display symbolic chmod permissions
    echo "Symbolic Permissions:"
    echo "u: User"
    echo "g: Group"
    echo "o: Others"
    echo "a: All (user, group, and others)"
    echo "r: Read permission"
    echo "w: Write permission"
    echo "x: Execute permission"
    echo
    echo "Symbolic Permission Representation:"
    echo "The 'u' stands for user, 'g' stands for group, 'o' stands for others, and 'a' stands for all three (user, group, and others)."
    echo "The 'r' stands for read permission, 'w' stands for write permission, and 'x' stands for execute permission."
}

if [ $# -ne 1 ]; then
    echo "Usage: chmodAssist [num | symbol]"
    exit 1
fi

option="$1"
case "$option" in
    "num")
        show_chmod_numbers
        ;;
    "symbol")
        show_chmod_symbols
        ;;
    *)
        echo "Invalid option: $option"
        echo "Usage: chmodAssist [num | symbol]"
        exit 1
        ;;
esac

# Examples for numeric permissions
echo
echo "Numeric Permission Examples:"
echo "chmod 755 file.txt   # Owner (7) has read, write, and execute. Group (5) and others (5) have read and execute."
echo "chmod 644 file.txt   # Owner (6) has read and write. Group (4) and others (4) have read."
echo "chmod 777 file.txt   # All (owner, group, and others) (7) have read, write, and execute."

# Examples for symbolic permissions
echo
echo "Symbolic Permission Examples:"
echo "chmod u+x file.txt   # Add execute permission (+x) for the owner (u)."
echo "chmod go-w file.txt  # Remove write permission (-w) for the group (g) and others (o)."
echo "chmod a=rw file.txt  # Give read and write permission (=rw) to all (owner, group, and others) (a)."
