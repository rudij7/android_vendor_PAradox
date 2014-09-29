How to push commits:

Autor: Klozz


:Paradox TEAM:

Writing a professional commit message
---

A well formatted, clean, descriptive commit message makes everyone so very happy. Linus Torvalds best explains a good commit message, so no need to reinvent the wheel.

```
Also, please write good git commit messages.  A good commit message
looks like this:

    Header line: explain the commit in one line (use the imperative)

    Body of commit message is a few lines of text, explaining things
    in more detail, possibly giving some background about the issue
    being fixed, etc etc.

    The body of the commit message can be several paragraphs, and
    please do proper word-wrap and keep columns shorter than about
    74 characters or so. That way "git log" will show things
    nicely even when it's indented.

    Make sure you explain your solution and why you're doing what you're
    doing, as opposed to describing what you're doing. Reviewers and your
    future self can read the patch, but might not understand why a
    particular solution was implemented.

    Reported-by: whoever-reported-it
    Signed-off-by: Your Name <youremail@yourhost.com>

where that header line really should be meaningful, and really should be
just one line.  That header line is what is shown by tools like gitk and
shortlog, and should summarize the change in one readable line of text,
independently of the longer explanation. Please use verbs in the
imperative in the commit message, as in "Fix bug that...", "Add
file/feature ...", or "Make Subsurface..."
```
[-Source](https://github.com/torvalds/subsurface/blob/master/README)

Several other guidelines that are good to follow can be found [here](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html), but the gist of it is as follows-
- Header line of 50 characters or less
- A blank line between the header line and body of the commit
- Body text should wrap at 72 characters

***


How to add commits


git add --all --> for add all new files
git add pathpofthe file--> add file ejem:  inside frameworks/base  git add /core/res/res/drawable-XHDPI/new.png

#git commit  to commit changes# 

git commit -a to add all changed files (Without add new files generated only use modified files)
git commit -m to make a commit message (ejem: git commit -m "my first commit"
git commit --signof to add your signature (ejem: git commit --signof -a -m "add new feature" it appears on github 

```
add new feature

signof-by: klozz <xxx.reptar.rawrr.xxx@blahblahblah>
```

Push your changes to git [For now not have a gerrit xD]

git remote add pa urlofthepath (EJEM: git remote add pa https://github.com/Team-PAradox/android_vendor_PAradox)
git push pa kitkat (to add upstream without merge it) or 
git push pa HEAD:kitkat (to add in the HEAD merged)