# Task2
### 1) Analyze the structure of the /etc/passwd and /etc/group file, what fields are present in it, what users exist on the system? Specify several pseudo -users, how to define them?
![](Images/4.2.1_1.png)
![](Images/4.2.1_2.png)
The "/etc/passwd" file contains information about the users on the system. Each line describes a distinct user. Each line has the next structure:

username:password:UID(user_id):GID(group_id):user_id_info(a comment field):home_directory:command/shell

The "/etc/group " file applies to the general security scheme for Unix-like systems: user, group, and file access.

group_name:password:group_id:list

These two files contain information about both real and pseudo-users. The most common pseudo-users:

  - daemon (used by system service processes)
  - bin (gives ownership of executables command)
  - adm (owns registration files)
  - nobody (used by many services)
  - sshd (used by the secure shell server)

Pseudo-users have UID range from 1 to 999. Also, we can identify pseudo-users by looking at the last field of the line. It typically contains “/usr/sbin/nologin” or “/bin/false”. When real users often have access to a shell (”/bin/bash”).
### 2-3) What are the uid ranges? What is UID? What is GID? How to determine UID and GID?

Unix-like operating systems identify a user by a user identifier (UID). The UID, along with the group identifier (GID) and other access control criteria, is used to determine which system resources a user can access.

Available UIDs are usually splitted into two ranges:

 - 1-999 – for system users (pseudo-users). These are users that do not map to actual “human” users, but are used as security identities for system daemons,    to implement privilege separation and run system daemons with minimal privileges.
 - 1000-65533 and 65536-4294967294 – for everything else, including regular users.
 - The root user has the UID of 0.
 - We can determine UID and GID by looking at the "/etc/passwd" file.
### 4) How to determine belonging of user to the specific group?
![](Images/4.2.4.png)
### 5) What are the commands for adding a user to the system? What are the basic parameters required to create a user?
useradd or adduser. The basic parameters are login and password.
### 6) How do I change the name (account name) of an existing user?
For change User name we can use command usrmode with key -l. (usermod -l new_username old_username)
### 7) What is skell_dir? What is its structure?
The /etc/skel directory contains files and directories that are automatically copied over to a new user’s when it is created from useradd command
### 8) How to remove a user from the system (including his mailbox)?
userdel -r username
### 9) What commands and keys should be used to lock and unlock a user account?
To lock a users account we can use the command usermod -L or passwd -l. usermod --lock user or # passwd --lock user
usermod --unlock user
### 10) How to remove a user's password and provide him with a password-free login for subsequent password change?
delete password passwd -d username
change password passwd -e username
### 11) Display the extended format of information about the directory, tell about the information columns displayed on the terminal.
  ![](Images/4.2.11.png)
  -  First column - Access rights
  -  The second column - the permissions.
  -  The second column shows the number of hard-links for the inode*.
  -  The third column shows the user.
  -  The fourth column shows the group.
  -  The fifth column shows the size of the file.
  -  The sixth column shows the date of the last change.
  -  The last column shows the name of the file.

*inode is a file system object containing information about the owner / group that owns a file or directory, access rights, its size, file type, timestamps reflecting the inode modification time (ctime, changing time), content modification time file (mtime, modification time) and the time of the last access to the file (atime, access time) and a counter for counting the number of hard links to the file.
### 12-13) What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.What is the sequence of defining the relationship between the file and the user?
Access rights can be represented by 9 characters (like “rwxrwxrwx”). Each character can contain “r" for read, "w" for write and "x" for execute, or "-" for no access. The first three characters are the rights for the user, second three - for the group, and the third three - for others.
### 14) What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal. 
chown - command used to change the owner
![](Images/4.2.14_1.png)
chmod - command used to change the mode of access to the file
![](Images/4.2.14_2.png)
### 15) What is an example of octal representation of access rights? Describe the umask command.
This notation consists of at least three digits. Each of these digits is the sum of its component bits in the binary numeral system. As a result, specific bits add to the sum as it is represented by a numeral:

  -  The read bit adds 4 to its total (in binary 100),
  -  The write bit adds 2 to its total (in binary 010), and
  -  The execute bit adds 1 to its total (in binary 001). Each sum is an octal representation of a bit field – each bit references a separate permission, and grouping 3 bits at a time in octal corresponds to grouping these permissions by user, group, and others.

For example, 755 means:

  -  Owner: rwx = 4+2+1 = 7
  -  Group: r-x = 4+0+1 = 5
  -  Other: r-x = 4+0+1 = 5 777 means: rwx for the owner, rwx for the group and rwx for the others.

The umask value contains the permission bits that will NOT be set on the newly created files and directories. The default creation permissions for files are 666 and for directories 777. To calculate the permission bits of the new files, we should subtract the umask value from the default value.

Let’s calculate how umask 022 will affect newly created files and directories:

  -  Files: 666 - 022 = 644. The owner can read and modify the files. Group and others can only read the files.
  -  Directories: 777 - 022 = 755.The owner has full access. Group and others can read and execute the files.
Example see up.
### 16) Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.
Sticky Bit is mainly used on folders. If it is set, the folder context can be deleted only by owner who created them and the root user. No one else can delete other users data in this folder. This is a security measure to avoid deletion of critical folders and their, though other users have full permissions.
For example, /tmp directory has a sticky bit.
![](Images/4.2.16_1.png)
![](Images/4.2.16_2.png)
![](Images/4.2.16_3.png)
### 17) What file attributes should be present in the command script?
The file must be executable for users so that the script can run.("x" for execute)
