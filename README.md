# Run scripts

Run a custom script based on what directory you're in.

The idea
---
- Ever finding yourself typing the same command in a folder to "run" whatever project is in there?
- Ever wish it just KNEW, because like, you're IN THAT ONE FOLDER?
- But you don't wanna write your own script and gitignore it? (*because takes like 15 whole seconds*...)
- This is a simple solution I've used for a while. Store a "run script" somewhere unimportant, and call it magically based on what directory you're in

How it works
----
- Two files
    - [edit.sh](edit.sh) makes/edits a script for your current directory
    - [run.sh](run.sh) runs it
- Stores your scripts in a directory structure that mirrors your actual directory structure
    - So, if you run **edit.sh** in `/Users/Sean/Desktop`, it'll make a script in `/.../runner/system/Users/Sean/Desktop`

Recommended aliases
-----
These are the ones I use:
```bash
alias er="/.../runner/edit.sh"
alias r="/.../runner/run.sh"
```

Potential FAQ
----
- What about symlinks?
    - Uses `pwd -P`, so it should work
