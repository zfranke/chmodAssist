 # chmodAssist

 chmodAssist is a Linux CLI package designed to assist users in understanding and setting file permissions using the 'chmod' command. It provides a user-friendly way to display the numeric and symbolic representations of permissions, along with explanations for each spot in the representation.

 ## Features

 - Display numeric and symbolic representations of 'chmod' permissions.
 - Explanation for each spot in the numeric and symbolic permission representation.
 - Examples of how to use 'chmod' with numeric and symbolic permissions.

 ## Requirements

 - Linux-based operating system.
 - Bash shell.

 ## Installation

 To install `chmodAssist`, you can download the latest release from the [GitHub repository](https://github.com/yourusername/chmodAssist) or use the following command:

 ```bash
 sudo dpkg -i chmodAssist.deb
 ```

 ## Usage

 After installation, you can use `chmodAssist` from the terminal as follows:

 ```bash
 chmodAssist num    # Show numeric representations of 'chmod' permissions.
 chmodAssist symbol # Show symbolic representations of 'chmod' permissions.
 ```

 ## Numeric Permission Representation

 The first digit represents the owner's permission.
 The second digit represents the group's permission.
 The third digit represents others' permission.

 - 0: No permission
 - 1: Execute permission
 - 2: Write permission
 - 3: Execute + Write permission
 - 4: Read permission
 - 5: Read + Execute permission
 - 6: Read + Write permission
 - 7: Read + Write + Execute permission

 ## Symbolic Permission Representation

 The 'u' stands for user, 'g' stands for group, 'o' stands for others, and 'a' stands for all three (user, group, and others).
 The 'r' stands for read permission, 'w' stands for write permission, and 'x' stands for execute permission.

 - u: User
 - g: Group
 - o: Others
 - a: All (user, group, and others)
 - r: Read permission
 - w: Write permission
 - x: Execute permission

 ## Examples

 Numeric Permission Examples:
 - `chmod 755 file.txt`   # Owner (7) has read, write, and execute. Group (5) and others (5) have read and execute.
 - `chmod 644 file.txt`   # Owner (6) has read and write. Group (4) and others (4) have read.
 - `chmod 777 file.txt`   # All (owner, group, and others) (7) have read, write, and execute.

 Symbolic Permission Examples:
 - `chmod u+x file.txt`   # Add execute permission (+x) for the owner (u).
 - `chmod go-w file.txt`  # Remove write permission (-w) for the group (g) and others (o).
 - `chmod a=rw file.txt`  # Give read and write permission (=rw) to all (owner, group, and others) (a).

 ## License

 This project is licensed under the [MIT License](LICENSE).
