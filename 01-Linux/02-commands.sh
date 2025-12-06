# List commands: Shows you what is inside the current directory (folder).
ls -l      # long, detailed list (size, date, permissions)
ls -a      # show hidden files (files starting with .)
ls -lh     # human-readable sizes (KB, MB)

# Change directory: Moves you to a different directory.
cd /home

# Create file: Creates a new file in the current directory.
touch file.txt

# Create directory: Creates a new directory in the current directory.
mkdir folder
mkdir -p uni/assignments/math   # create a directory hierarchy

# Remove file: Deletes a file from the current directory.
rm file.txt
rm -i file.txt  # interactive mode, asks for confirmation before deleting
rm -r folder    # remove a directory and all its contents

# Show file contents: Displays the contents of a file.
cat file.txt

# Copy file: Copies a file to a new location.
cp file.txt new_file.txt
cp -r folder new_folder

# Move or rename file: Moves or renames a file to a new location.
mv file.txt new_file.txt     # Renames a file
mv -i file.txt Documents/  # interactive mode, asks for confirmation before moving

# Full path: Returns the full path of a file or directory.
pwd

# Print text
echo "Hello World"
echo "Hello World" > file.txt  # redirect output to a file

# Search for files
find /home -name "*.txt"  # find all files with .txt extension

# Search inside files
grep "Hello" file.txt  # search for a string inside a file

# Test internet connection  
ping google.com

# File permissions
## Syntax chmod [user][operator][permission] file
chmod u+x file.txt  # add execute permission for the owner of the file
chmod g-w a+r file.txt  # remove write permission for the group and add read permission for the owner

## Numerical representation of permissions
# Read (r)-> 4, Write (w)-> 2, Execute (x)-> 1
chmod 754 file.txt  # read, write, execute for owner, read and execute for group, read for others


# Securely connect to a remote server
ssh username@ip_address

# Copy files securely
scp file.txt username@ip_address:~/Documents/

# CURL
curl https://www.google.com
curl -O https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png  #Saves the file to the current directory
curl -o img.png https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png #Saves the file to the img.png file

# Download a file from a website
wget https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png

# Pipe
cat file.txt | grep "Hello"  # Pipe output to another command