# Step 02: Your first commit

Lesson: **Your first commit, explained** (on ewoibuilds.com: `/lessons/your-first-commit-explained`)

## Your workspace folder

`~/ewoi-learning/first-app`. On Windows, use **Git Bash** (installed with Git) for this step and the steps after it.

## What this step adds

Git, set up once on your computer, and your first repository, `first-app`, with five commits: first a `.gitignore` that keeps secrets and downloaded packages out of history (before any other file), then a README, then three practice commits.

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
printf ".env\nnode_modules/\nvendor/\n" > .gitignore
git add .gitignore
git commit -m "Ignore secrets and downloaded packages"
echo "# My first app" > README.md
git add README.md
git commit -m "Add a README"
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

The first commit is the root commit, and it holds only `.gitignore` (your IDs will differ):

```
[main (root-commit) 892828d] Ignore secrets and downloaded packages
 1 file changed, 3 insertions(+)
 create mode 100644 .gitignore
```

At the end, `git log --oneline` shows five commits, newest first:

```
25c155f Add a note about git status
dde06fc Add learning notes
c73994e Describe the app in the README
69b0b34 Add a README
892828d Ignore secrets and downloaded packages
```

## Check

- `git status` says `nothing to commit, working tree clean`.
- Your three files match the ones in [first-app/](first-app/) line for line.

## Commit messages this step uses

1. `Ignore secrets and downloaded packages`
2. `Add a README`
3. `Describe the app in the README`
4. `Add learning notes`
5. `Add a note about git status`

Next: [step 03, branches without fear](../step-03-branches-without-fear/)

<!-- ewoi:step -->
---

**Next:** [step-03-branches-without-fear](../step-03-branches-without-fear/) &nbsp;&middot;&nbsp; **Stuck?** [Ask with the "I am stuck" form](https://github.com/ewoibuilds/developer-foundations/issues/new/choose) &nbsp;&middot;&nbsp; **Helped?** Star [the repo](https://github.com/ewoibuilds/developer-foundations) and follow [Ewoi Builds](https://github.com/ewoibuilds).
<!-- /ewoi:step -->
