# Step 02: Your first commit

Lesson: **Your first commit, explained** (on ewoibuilds.com: `/lessons/your-first-commit-explained`)

## Your workspace folder

`~/ewoi-learning/first-app`. On Windows, use **Git Bash** (installed with Git) for this step and the steps after it.

## What this step adds

Git, set up once on your computer, and your first repository, `first-app`, with five commits: a README, a `.gitignore` that keeps secrets and downloaded packages out of history, and three practice commits.

## The files

```
first-app/
├── .gitignore   keeps .env, node_modules/ and vendor/ out of Git
├── README.md    the project's front page, two lines
└── notes.txt    what you learned, two lines
```

## How to run it

Set up Git once (use the email you use on GitHub):

```
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global init.defaultBranch main
```

Then build the repository, one commit at a time:

```
mkdir -p ~/ewoi-learning/first-app
cd ~/ewoi-learning/first-app
git init
echo "# My first app" > README.md
git add README.md
git commit -m "Add a README"
printf ".env\nnode_modules/\nvendor/\n" > .gitignore
git add .gitignore
git commit -m "Ignore secrets and downloaded packages"
echo "A small app to learn Git." >> README.md
git add README.md
git commit -m "Describe the app in the README"
echo "Git saves snapshots called commits." > notes.txt
git add notes.txt
git commit -m "Add learning notes"
echo "git status shows where I am." >> notes.txt
git add notes.txt
git commit -m "Add a note about git status"
```

## Expected output

`git log --oneline` shows five commits, newest first (your IDs will differ):

```
ce1ec56 Add a note about git status
28fdd19 Add learning notes
4f9dccf Describe the app in the README
2033073 Ignore secrets and downloaded packages
5ee4b84 Add a README
```

## Check

- `git status` says `nothing to commit, working tree clean`.
- Your three files match the ones in [first-app/](first-app/) line for line.

## Commit messages this step uses

1. `Add a README`
2. `Ignore secrets and downloaded packages`
3. `Describe the app in the README`
4. `Add learning notes`
5. `Add a note about git status`

Next: [step 03, branches without fear](../step-03-branches-without-fear/)
