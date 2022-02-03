<span style="text-align:center"> 
# Site Gen with VBS 
(The Ultimate Language)
</span>

### How it works

It's an extremely simple static site generator. Posts are written in HTML.
There's only really two features; (1) Creating a new post (2) Building the site
out. 

Creating a new post just creates a new file in `dft\` with the title you
specified named in the format *YYYY-mm-dd-Title-of-post.html*. The `<h1>` tag
it adds is just the raw title you input.

**WIP** Building the site automatically takes the files in `src\` and adds
`h.htm` then the `dft\` file, then the `f.htm`. 


### Instructions

Run in one of three ways...

- **My preferred method:** Navigate to `blk.vbs` in Windows Explorer. *Right click*, select *Open
with*, then *Choose another app*, navigate to `C:\Windows\System32`, and select
to open with cscript.exe by default. This means you can just type `blk.vbs`
into `cmd.exe` and it'll work
- If you don't mind some extra typing, just type `cscript bld.vbs` into
`cmd.exe`
- If you have administrator priviledges, I understand you can type `wscript.exe //H:wscript
` / `wscript.exe //H:cscript` but I haven't tried this method

### Help

If you decide to use this for some crazy reason, and want help (or if you want
to improve this), just contact me on
[Twitter](https://twitter.com/HsvqZ1uD6tASGbM) or submit an Issue.

