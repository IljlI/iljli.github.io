' Create New Page/Post
	Function Create()
	' Get Post Title
		WScript.StdOut.Write "Enter the post title: "
		PostTitle = WScript.StdIn.ReadLine 

	' Haven't checked with double digit mon/day
		PostDate    =  Year(Date) & "-" & Right("0" & Month(Date),2) & "-" & Right("0" & Day(Date),2) & "-"
		PostHyphen  =  Replace(PostTitle, " ", "-")
	' Full Post URL
		PostURL     =  PostDate & PostHyphen & ".html"

	' Create Page with <h1> and <p>
		Set Create = CreateObject("Scripting.FileSystemObject").OpenTextFile("dft\" & PostURL,8,True)
		Create.WriteLine("<h1>" & PostTitle & "</h1>")
		Create.WriteLine("<p>CONTENT</p>")
		Set Create = Nothing

	' Feedback
		WScript.Echo "Post will be live at " & PostURL
	End Function

' Build The Site
	Function Build()

		' Header and Footer File Content
			x=0
			Dim y(1)
			Dim z(1)
			y(0)="src\h.htm"
			y(1)="src\f.htm"
			Do 
				Set f = CreateObject("Scripting.FileSystemObject").OpenTextFile(y(x))
				z(x) = f.ReadAll()
				f.Close
				Set f = Nothing
				x=x+1
			Loop Until x = 2
			Header = z(0)
			Footer = z(1)

		' Build Index
			
		' Build Pages
		
	End Function

' Get Decision 
	Function NewOrNot()
		WScript.StdOut.Write "Add a New Post (y/N): "
		a = WScript.StdIn.ReadLine
		If a="y" Then
			NewOrNot = True
		Else
			NewOrNot = False
		End If
	End Function


' New Post?
	If NewOrNot = True Then
		Call Create
	End If
	Call Build

