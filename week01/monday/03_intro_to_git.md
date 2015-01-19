# Intro to Git

http://patorjk.com/software/taag/#p=display&f=Sub-Zero&t=hello%20world

**Objectives:**

- Explain what Git is and why we use it
- Make commits to a git repository
- Explain what a branch is and why we would use one

## Git vs. GitHub

These are two separate (but obviously related) pieces of software, so it's important to make this distinction:

- **Git** is an exceptionally powerful piece of version control software that tracks the change history of a collection of files (called a repository).

- **GitHub** is a web application that provides remote hosting for Git repositories, and offers a pretty user interface for browsing code stored in a Git repository.


## Remote vs. Local

In Git, we have two central concepts of location:

- **Remote:** a remote server is somewhere out on the Internet. It hosts the definitive source of a repository. Our remotes will be hosted on GitHub.

- **Local:** we can "clone" a remote to make a local copy of the repository on our own computer. Once we have a local copy, we can make changes, and then push those changes back to the remote.


## Cloning

To obtain a local copy of a remote repository, use `git clone`. You can get a repository's cloning URL from GitHub.

```
git clone <repo_clone_url>
```

Try it:

```
git clone git@github.com:ga-students/BEWD_DC_JAN2015.git
```

When you clone a repository, a complete copy of the repository will be downloaded onto your system. Once you have a local copy, you're free to start making your own changes.

## Pulling

Once you have a local copy of a repository, you can always *pull* from the remote to keep your local copy up-to-date with new changes. To pull from the remote, simply `cd` into the repository folder and use `git pull`:

```
cd <repo_directory>
git pull
```

## Git Staging & Commit

When you make changes to a local repository, your changes will be tracked as *unstaged* files. Basically, these are files that you are in the process of editing, and have not yet *committed* into version history. At any time, you can see the status of your staged files using `git status`:

```
cd <repo_directory>
git status

Changes not staged for commit:
  modified:   app/cells/analytics/foot.html.erb
  modified:   app/cells/analytics/head.html.erb
```

Upon running `git status`, Git has told us that we have two changed files that are not "staged for commit". In other words: we've modified those files, but Git is ignoring the changes for the time being.

## Staging changes

When we feel that our changes are in a good place and we're ready to commit them into version history, then we'll first need to *stage* all of the files that we want to commit. Staged files are the changes that we want to include in our next commit to version history. To stage files for commit, use the `git add .` command:

```
git add .
git status

Changes to be committed:
  modified:   app/cells/analytics/foot.html.erb
  modified:   app/cells/analytics/head.html.erb
```

Now that we'd added our changes, Git is tracking those files for inclusion in the next commit. This is useful when you have (–say–) five changed files, but only want to commit two of them. You can just stage the two files you're sure are ready to be versioned, and commit them by themselves.

## Committing changes

Once you've staged changes, then the last step is to *commit* them. Once committed, your changes are embedded into the repository's version history. Whenever we make a commit, we also include a brief message for posterity describing the commit. Use `git commit -m '...'` to commit your staged changes:

```
git commit -m 'Adding analytics tracking to header and footer.'
```

Neat! Your changes have been committed to the version history of your local repository. You can now always rollback to this version of the committed files. This provides an excellent safety net for you, should you break something tomorrow and need to revert back to this point in your code history.

To review the recent commits in your repository, use `git log`:

```
git log

commit 75348c842f26df37c58918ab8e4b853898e50ed7
Author: Greg MacWilliam <greg.macwilliam@bagelbites.net>
Date:   Fri Jan 16 17:08:28 2015 -0500

    Adding analytics tracking to header and footer.

```

## Pushing

After committing changes, it's important to remember that you've only committed to your *local* copy of the repository. While making local commits is great, we also want to push our changes back out to our remote host... that way if our computer dies tomorrow, we're not up the creek. To push your local commits back to the remote, use `git push`:

```
git push
```

## Classroom Notes

**Activity:**

* Explain why students are learning to use a Git and provide context to how web developers use it.
  * Version Control (also SVN, Subversion)
  * Something that is taken for granted once you start using it - but imagining life without it makes it easy to remember why it is used
  * Makes experimentation risk-free
  * easy to undo
  * easy to fork
  * combines the "what" (code) with the "why" (commit message)
  * multiple people can work on the same code at the same time and sort of the differences later
  * Fast forward/rewind through software's evolution
  * Coordinating with teams
  * Controlling releases
  * Initialize a repo and make commits with Git

* Using the whiteboard, explain what Git is and how it works
 * snapshots (commits)

* The 3 main sections of a Git Project
  * Working Directory
  * Staging Area
  * Git directory (repository)

* Demonstrate using Git by having students follow along with you.
  * Create a new directory and a new text file.
  * Use “git init” to initialize a git repo
  * Use “git status” to see where your files are at
  * Use “git add .” to start tracking files
  * Use “git commit -m” to commit changes with a message
  * Use “git log” to see all commits that have been made

* Show how you would make changes and undo changes.
  * Undo commits using git log, git reset (undoes snapshots), git reset --hard

* branches (different composition of snapshots - ie different cuts)

http://ndpsoftware.com/git-cheatsheet.html#loc=index;


## Github

** Objectives **

- Explain the difference between Git and Github
- Explain the difference between a fork, clone
- Explain the difference between a fetch, merge and pull
- Diagram and explain how contributing to an open source project on Github works (or our homework submission process)

** Activity **

- Set up your fork of class repo
- Make a change and submit a pull request