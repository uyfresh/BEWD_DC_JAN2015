# Intro to Git

**Objectives:**

- Explain what Git is and why we use it
- Make commits to a git repository
- Explain what a branch is and why we would use one

## Git Cheat Sheet

- `git init` initializes a new local repository.
- `git clone <clone_url>` clones a remote repository.
- `git status` lists your modified files and staged chages.
- `git add <file_name>` adds an untracked/changed file to staged changes.
  - `git add .` adds ALL untracked/changed files to staged changes.
- `git commit -m 'message.'` commits staged files to version history.
- `git push` pushes all local commits to remote server.
- `git pull` pulls all remote changes down to your local repository.
- `git log` review local commit history.

## What is Git?

Git is a version control system for managing file modifications. It is an exceptionally powerful piece of software that tracks content patches submitted by multiple authors, and reconciles them into onto "definitive" current version.

** Benefits:**

* Version Control (older alternative: Subversion, or SVN).
* Makes experimentation risk-free.
* Easy to undo changes.
* Easy to fork other developers' projects.
* Combines the "what" (code) with the "why" (commit message).
* Multiple devs can work on the same code, and sort out differences later.
* Fast forward/rewind through software's evolution.
* Controlling releases.

## Git vs. GitHub

These are two separate (but obviously related) pieces of software, so it's important to make this distinction:

- **Git** is an exceptionally powerful piece of version control software that tracks the change history of a collection of files (called a repository).

- **GitHub** is a web application that provides remote hosting for Git repositories, and offers a pretty user interface for browsing code stored in a Git repository.


## Remote vs. Local

In Git, we have two central concepts of location:

- **Remote:** a remote server is somewhere out on the Internet. It hosts the definitive source of a repository. Our remotes will be hosted on GitHub.

- **Local:** we can "clone" a remote to make a local copy of the repository on our own computer. Once we have a local copy, we can make changes, and then push those changes back to the remote.

## Forking

Using GitHub, you can "fork" another developer's repository. When you fork a repo, you're creating your own copy of the repository that you can work on in parallel with the original source author. You'll be editing and pushing to your own copy of the repository without impacting the original author's repository. When your code is at a point that you feel it's ready to be merged with the original author's project, you may submit a *pull request* to promot the original author to review your work and consider merging it into their definitive source.

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