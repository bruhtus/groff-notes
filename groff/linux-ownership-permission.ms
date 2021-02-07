.TL
Linux File/Directory Ownership and Permissions
.AU
Robertus Diawan Chris
.NH
.XN "How to check ownership and permission"
.PP
To check the ownership and permission you can use
.CW "ls -l",
The file/directory ownership is on column 3 (username) and 4 (group) and the file/directory permissions is on column 1 with sequence like this
.CW "-rw-r--r--"
if it's a file, or like this
.CW "drwxr-xr-x"
if it's a directory.
.NH
.XN "How to change ownership"
.PP
You can change ownership by using this command
.IP
.CW
chown user:group <file/directory>
.LP
for example, if i want to change ownership from root to bruhtus user, i need to use this command:
.IP
.CW
sudo chown bruhtus:bruhtus <file/directory>
.LP
we need to use sudo because the previous owner is root, if it's not root then we don't need sudo.
.PP
We can also change ownership the file within directory (not only the directory itself) by using this command
.IP
.CW
chown -R user:group <directory>
.NH
.XN "How to change permission"
.PP
Below is the table of the file/directory permission:
.TS
center allbox tab(,);
cccc.
Directory,Owner,Group,Others
d or -, rwx or ---, rwx or ---, rwx or ---
.TE
if
.CW "-"
on beginning that means it's not a directory and other than that it's doesn't have read, write, or execute permissions. Here's the table of the point from read, write, execute:
.TS
center allbox tab(,);
ccc.
Symbol,Meaning,Point
r,read,4
w,write,2
x,executable,1
.TE
You can use the point with the command below
.IP
.CW
chmod <point> <file/directory>
.LP
For example, if we want to give read and write permission to owner/user and read only permission to group and others, we can use this command
.IP
.CW
chmod 644 <file>
.LP
or if we want to add execute permission to owner/user, group, and others to those file then we can use this command
.IP
.CW
chmod 755 <file>
.LP
The command above is equvallent to this command (add executable permission to owner/user, group, and others)
.IP
.CW
chmod +x <file>
.LP
Other than using the point, you can also using the command below instead
.TS
center allbox tab(;);
cc
ll.
Command;Explanation
chmod u+x <file>;execute permission only for user/owner
chmod g+x <file>;execute permission only for group
chmod o+x <file>;execute permission only for others
chmod ug+x <file>;execute permission only for user/owner and group
chmod a+x <file>;similar to +x, give user/owner, group, and others execute permission
.TE
you can use other symbol like
.CW "r"
and
.CW "w"
too. You can also change permission recursively like change ownership, by using this command
.IP
.CW
chmod -R u+x <directory>
