# terraform-aws-terratest

step 1 :: download the golang package

curl -OL https://go.dev/dl/go1.20.4.linux-amd64.tar.gz

step :: untar the package in a directory

tar -C /usr/local -xvf go1.20.4.linux-amd64.tar.gz

step 3: Set the path
First, set Go’s root value, which tells Go where to look for its files. You can do this by editing the .profile file, 
which contains a list of commands that the system runs every time you log in.

Use your preferred editor to open .profile, which is stored in your user’s home directory. Here, we’ll use nano:

sudo vi ~/.profile

Then, add the following information to the end of your file:

export PATH=$PATH:/usr/local/go/bin

Step 4 : Refresh the profile

After you’ve added this information to your profile, save and close the file. If you used nano, do so by pressing CTRL+X, then Y, and then ENTER.

Next, refresh your profile by running the following command:

command >>
source ~/.profile

Step 4 : check the version

go version


Step 6 : clone the diectory in your machine 

steo 7 : inside the directory use the below command.

this will initialize and download the dependancies.

go mod init "<MODULE_NAME>"
go mod tidy

Step 8 : run the test

go test -v -timeout 30m
 
 

