# Step 04: Linux files and permissions

Lesson: [Linux files and permissions](https://ewoibuilds.com/lessons/linux-files-and-permissions)

## Your workspace folder

`~/ewoi-learning/notes/linux`. On Windows, work in the **Ubuntu** terminal (WSL), not Git Bash: Ubuntu has its own home folder, so you create `~/ewoi-learning` again there.

## What this step adds

A practice folder where you create files, read their permissions with `ls -l`, change them with `chmod`, fix a "Permission denied" error on a script, and save the result with Git.

## The files

```
linux/
├── .gitignore   keeps secret.txt out of Git
├── hello.sh     a two-line script, runnable by its owner (x)
├── today.sh     prints today's date, runnable by its owner (x)
└── todo.txt     one line of text
```

`secret.txt` and the empty `shared/` folder exist on your computer but are not in Git: the first is ignored on purpose, and Git never saves empty folders.

## How to run it

```
mkdir -p ~/ewoi-learning/notes/linux
cd ~/ewoi-learning/notes/linux
echo "Learn permissions" > todo.txt
printf '#!/bin/sh\necho "Hello from my script"\n' > hello.sh
./hello.sh
chmod u+x hello.sh
./hello.sh
```

The first `./hello.sh` fails with `Permission denied`; after `chmod u+x` it prints `Hello from my script`.

Practice task:

```
echo "My secret note" > secret.txt
chmod 600 secret.txt
printf '#!/bin/sh\ndate\n' > today.sh
chmod u+x today.sh
./today.sh
mkdir shared
ls -ld shared
```

Save your work (on WSL, run the three `git config --global` lines from [step 02](../step-02-your-first-commit/) first: Ubuntu does not know your name yet):

```
git init
echo "secret.txt" > .gitignore
git add .gitignore todo.txt hello.sh today.sh
git commit -m "Add Linux practice files"
```

## Expected output

`ls -l` shows something like this (owner, group, sizes and dates differ; if your system starts files as `-rw-rw-r--`, the group also has `w`):

```
-rwxr--r-- 1 amina amina 38 Nov 14 09:20 hello.sh
-rw------- 1 amina amina 15 Nov 14 09:25 secret.txt
drwxr-xr-x 2 amina amina 4096 Nov 14 09:26 shared
-rwxr--r-- 1 amina amina 15 Nov 14 09:24 today.sh
-rw------- 1 amina amina 18 Nov 14 09:12 todo.txt
```

`todo.txt` is `-rw-------` because the lesson changes it with `chmod 600` in Part 5.

The commit prints `create mode 100755 hello.sh` and `create mode 100755 today.sh`: Git saved the `x`, so the scripts stay runnable when cloned.

## Check

- `./hello.sh` prints `Hello from my script` and `./today.sh` prints the date.
- `git status` says `nothing to commit, working tree clean`.
- `git ls-files` lists `.gitignore`, `hello.sh`, `today.sh` and `todo.txt`, and not `secret.txt`.

## Commit message this step uses

`Add Linux practice files`

Next: [step 05, find the permission bug](../step-05-find-the-permission-bug/)

<!-- ewoi:step -->
---

**Next:** [step-05-find-the-permission-bug](../step-05-find-the-permission-bug/) &nbsp;&middot;&nbsp; **Stuck?** [Ask with the "I am stuck" form](https://github.com/ewoibuilds/developer-foundations/issues/new/choose) &nbsp;&middot;&nbsp; **Helped?** Star [the repo](https://github.com/ewoibuilds/developer-foundations) and follow [Ewoi Builds](https://github.com/ewoibuilds).
<!-- /ewoi:step -->
