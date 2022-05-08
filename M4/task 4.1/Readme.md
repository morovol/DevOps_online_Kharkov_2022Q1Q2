# Task1.Part1
### 1) Log in to the system as root (or sudo-er).
![](Images/4.1.1.png)
### 2) Use the passwd command to change the password. Examine the basic parameters of the command. What system file does it change *?
![](Images/4.1.2_1.png)
It change /etc/passwd 
### 3) Determine the users registered in the system, as well as what commands they execute. What additional information can be gleaned from the command execution?
![](Images/4.1.3.png)
### 4) Change personal information about yourself.
![](Images/4.1.4.png)
### 5) Become familiar with the Linux help system and the man and info commands. Get help on the previously discussed commands, define and describe any two keys for these commands. Give examples.
![](Images/4.1.5.1.png)
![](Images/4.1.5.2.png)
![](Images/4.1.5.3.png)
![](Images/4.1.5.4.png)
### 6) Explore the more and less commands using the help system. View the contents of files .bash* using commands.
![](Images/4.1.6.1.png)
![](Images/4.1.6.2.png)
### 7) * Determine the last logon time for all users. Tip: You should read the documentation for the finger command.
![](Images/4.1.7.png)
### 8) * List the contents of the home directory using the ls command, define its files and directories. Hint: Use the help system to familiarize yourself with the ls command.
![](Images/4.1.8.png)
# Task1.Part2
### 1) Examine the tree command. Master the technique of applying a template, for example, display all files that contain a character c, or files that contain a specific sequence of characters. List subdirectories of the root directory up to and including the second nesting level.
![](Images/4.1.1p2.png)
### 2) What command can be used to determine the type of file (for example, text or binary)? Give an example.
![](Images/4.1.2p2.png)
### 3) Master the skills of navigating the file system using relative and absolute paths. How can you go back to your home directory from anywhere in the filesystem?
![](Images/4.1.3p2.png)
### 4) Become familiar with the various options for the ls command. Give examples of listing directories using different keys. Explain the information displayed on the terminal using the -l and -a switches.
![](Images/4.1.4p2.png)
### 5) Perform the following sequence of operations: 
 - create a subdirectory in the home directory;
 - in this subdirectory create a file containing information about directories located in the root directory (using I/O redirection operations);
 - view the created file; - copy the created file to your home directory using relative and absolute addressing. 
 - delete the previously created subdirectory with the file requesting removal;
 - delete the file copied to the home directory.
![](Images/4.1.5_1p2.png)
![](Images/4.1.5_2p2.png)
### 6) Perform the following sequence of operations: 
  - create a subdirectory test in the home directory; 
  - copy the .bash_history file to this directory while changing its name to labwork2; 
  - create a hard and soft link to the labwork2 file in the test subdirectory; 
  - how to define soft and hard link, what do these concepts; 
  - change the data by opening a symbolic link. What changes will happen and why 
  - rename the hard link file to hard_lnk_labwork2; 
  - rename the soft link file to symb_lnk_labwork2 file; 
  - then delete the labwork2. What changes have occurred and why?
![](Images/4.1.6_1p2.png)
![](Images/4.1.6_2p2.png)
![](Images/4.1.6_3p2.png)
![](Images/4.1.6_4p2.png)
We still can access the file through the hard link. But the file isn't available through the soft link.
### 7) Using the locate utility, find all files that contain the squid and traceroute sequence.
![](Images/4.1.7p2.png)
### 8) Determine which partitions are mounted in the system, as well as the types of these partitions.
![](Images/4.1.8p2.png)
### 9) Count the number of lines containing a given sequence of characters in a given file.
![](Images/4.1.9p2.png)
### 10) Using the find command, find all files in the /etc directory containing the host character sequence.
![](Images/4.1.10p2.png)
### 11) List all objects in /etc that contain the ss character sequence. How can I duplicate a similar command using a bunch of grep?
![](Images/4.1.11p2.png)
### 12) Organize a screen-by-screen print of the contents of the /etc directory. Hint: You must use stream redirection operations.
![](Images/4.1.12_1p2.png)
![](Images/4.1.12_2p2.png)
### 13) What are the types of devices and how to determine the type of device? Give examples.
#### Character Device
These devices transfer data, but one a character at a time. You'll see a lot of pseudo devices (/dev/null) as character devices, these devices aren't really physically connected to the machine, but they allow the operating system greater functionality.
#### Block Device
These devices transfer data, but in large fixed-sized blocks. You'll most commonly see devices that utilize data blocks as block devices, such as harddrives, filesystems, etc.
#### Pipe Device
Named pipes allow two or more processes to communicate with each other, these are similar to character devices, but instead of having output sent to a device, it's sent to another process.
#### Socket Device
Socket devices facilitate communication between processes, similar to pipe devices but they can communicate with many processes at once.
To determine the type of device is used the command: ls -l /dev
c - character
b - block
p - pipe
s - socket
![](Images/4.1.13p2.png)
### 14) How to determine the type of file in the system, what types of files are there?
To determine the type of file is used the command: ls -l
 - - : regular file
 - d : directory
 - c : character device file
 - b : block device file
 - s : local socket file
 - p : named pipe
 - l : symbolic link
### 15) * List the first 5 directory files that were recently accessed in the /etc directory.
![](Images/4.1.15p2.png)


