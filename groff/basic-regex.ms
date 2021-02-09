.TL
Basic Regular Expression
.AU
Robertus Diawan Chris
.TS
center tab(;);
ll.
.;Any one character
*;Match any number of previous character (including zero number of previous character)
+;Match any number of previous character
$;End of the line
^;Beginning of the line
\\S;Any non-whitespace character
\\s;Any whitespace character
?;The character before is optional
[a-z];Any lowercase letter
[A-Z];Any uppercase letter
[A-Za-z];Any letter
[0-9];Any number (it can also be [1-9], [6-9], and so on)
\\;T{
Escape something (if it's magical character then it's gonna make it normal character and vice versa)
T}
.TE
.LP
Example:
.IP - 2
grep "f.x" <filename> -> grep anything that start with f, end with x, and any one character between f and x.
   example results: fox, fix, fax
.IP - 2
grep "fo*x" <filename> -> grep anything that start with f, end with x, and any number of previous character including something that doesn't have previous character (which is "o" in this case), between f and x.
   example results: fox, fooooox, fx
.IP - 2
grep "fo\+x" <filename> -> grep anything that start with f, end with x, and any number of previous character excluding something that doesn't have previous character (which is "o" in this case), between f and x.
   example results: fox, fooooox
.IP - 2
grep "x$" <filename> -> grep anything that end with x.
   example results: fox, fix, fax, fooooox, fx
.IP - 2
grep "^sp" <filename> -> grep anything that start with sp.
   example results: split, splinter, spine, sparse, spring, spool
.IP - 2
grep "\\S*oomer" <filename> -> grep anything that doesn't has whitespace character in it.
   example: if there's a text "the consoomer" then the highlight gonna be on "consoomer" and left out "the" text
.IP - 2
grep "the\\s\\+consoomer" <filename> -> grep anything that has whitespace character in it.
   example: if there's a text "the consoomer" and "the       consoomer" then the highlight gonna be on both of them regardless of the space
.IP - 2
grep "https\\?" <filename> -> grep anything that has or doesn't has "s" character
   example result: http, https

Reference: https://www.youtube.com/watch?v=77I4ZkhuHsQ
