0-hello_world
This script simply prints the message "Hello, World" to the console using the echo command.

1-confused_smiley
The script prints a confused smiley face, ""(Ôo)'", to the console using the echo command. The backslashes are used to escape special characters.

2-hellofile
This script uses the cat command to display the contents of the /etc/passwd file to the console.

3-twofiles
The script uses the cat command to display the contents of both the /etc/passwd and /etc/hosts files to the console.

4-lastlines
This script uses the tail command to display the last 10 lines of the /etc/passwd file.

5-firstlines
The script uses the head command to display the first 10 lines of the /etc/passwd file.

6-third_line
This script uses a combination of head and tail commands to extract and display the third line of a file named "iacta". It assumes the file "iacta" exists and contains at least three lines.

7-file
The script uses the echo command to write the text "Best School" to a file named "'"Best School"'$\?\*****:".

8-cwd_state
This script uses the ls command with the -la option to list the content of the current directory and redirects the output to a file named "ls_cwd_content".

9-duplicate_last_line
The script appends the last line of a file named "iacta" to the same file, effectively duplicating the last line.

10-no_more_js
This script uses the find command with the -type f and -name "*.js" options to locate and delete all files with a ".js" extension in the current directory and its subdirectories.

11-directories
The script uses the find command with the -type d and -not -name '.' options to count the number of directories (excluding the current directory) in the current directory and its subdirectories.

12-newest_files
This script uses the ls command with the -t1 option to list the names of the 10 newest files in the current directory.

13-unique
The script uses the sort and uniq commands to filter and display only the unique lines from the input.

14-findthatword
This script uses the grep command to search for the word "root" in the /etc/passwd file, ignoring case sensitivity.

15-countthatword
The script uses the grep command with the -c option to count the occurrences of the word "bin" in the /etc/passwd file, ignoring case sensitivity.

16-whatsnext
This script uses the grep command with the -A option to search for the word "root" in the /etc/passwd file and display the three lines following each matching line.

17-hidethisword
The script uses the grep command with the -v option to filter out lines containing the word "bin" from the /etc/passwd file and display the remaining lines.

18-letteronly
This script uses the grep command to extract and display lines from the /etc/ssh/sshd_config file that start with a lowercase letter.

19-AZ
This script uses the tr command to convert all occurrences of the letter "A" to "Z" and the letter "c" to "e" in the input.

21-reverse
The script uses the rev command to reverse the characters of each line of the input.

22-users_and_homes
This script uses the cut command with the -d ':' -f 1,6 options to extract and display the usernames and home directories of users from the /etc/passwd file, sorted alphabetically.

100-empty_casks
This script uses the find command with the -empty option to locate and display the names of empty files in the current directory and its subdirectories.

101-gifs
The script uses the find command with the -type f and -name "*.gif" options to locate GIF files in the current directory and its subdirectories, and then extracts and displays their filenames without the ".gif" extension, sorted in a case-insensitive manner.

102-acrostic
This script uses the cut command with the -c 1 option to extract the first character from each line of the input and then concatenates them together.

103-the_biggest_fan
The script processes input and extracts the first field (separated by a tab) from each line, sorts the extracted fields, counts the unique values, sorts the counts in descending order, and displays the top 10 values.
