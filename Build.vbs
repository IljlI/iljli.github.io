
Function Create()

	WScript.StdOut.Write "Enter the post title: "
	PostTitle = WScript.StdIn.ReadLine 

' Haven't checked with double digit mon/day
	PostDate  = Year(Date) & "-" & Right("0" & Month(Date),2) & "-" & Right("0" & Day(Date),2) & "-"
	PostTitle = Replace(PostTitle, " ", "-")

' Create File
	' make in folder "p"
	' add post title to file

	WScript.Echo "post = " & PostDate & PostTitle & ".html"	

End Function



Function Main()

	' add links to homepage

	' cat files together basically (h.html, f.html)
	
	WScript.Echo "Adding Files"

End Function


WScript.StdOut.Write "Add a New Post (y/N): "
a = WScript.StdIn.ReadLine
If a="y" Then
	Call Create
Else
	Call Main
End If
