# Step 05: Find the permission bug (exercise)

Exercise: **Find the permission bug** (on ewoibuilds.com: `/exercises/find-the-permission-bug`)

## Your workspace folder

`~/ewoi-learning/linux-exercise` (on Windows, in the Ubuntu terminal).

## What this step adds

A nightly backup script that fails twice with `Permission denied`, for two different reasons. You read the evidence with `ls -l`, find both causes and fix each one with the smallest `chmod`, without `sudo` and without `chmod 777`.

## The files

```
step-05-find-the-permission-bug/
├── starter/
│   ├── backup.sh    the script, not yet runnable
│   └── setup.sh     recreates the broken state (the read-only log)
└── solution/
    ├── .gitignore   keeps logs/ out of Git
    ├── backup.sh    the same script, now runnable by its owner
    └── README.md    the two causes and fixes (open it only after trying)
```

## How to run it

Either type the set-up commands from the exercise page, or start from this folder:

```
mkdir -p ~/ewoi-learning/linux-exercise
cp starter/backup.sh starter/setup.sh ~/ewoi-learning/linux-exercise/
cd ~/ewoi-learning/linux-exercise
sh setup.sh
./backup.sh
```

`sh setup.sh` runs the set-up script through the shell, so it does not need `x` itself. It makes `logs/backup.log` read-only, exactly as the exercise does, and prints the permissions of both files.

## Expected output

The first run fails:

```
bash: ./backup.sh: Permission denied
```

After the first fix, a second, different error appears (the wording differs a little on a Mac):

```
./backup.sh: 2: cannot create logs/backup.log: Permission denied
```

When both are fixed, the script prints nothing and each run adds one line to the log.

## Hints (try for 20 minutes before reading on)

1. Run `ls -l backup.sh`. Is there an `x` anywhere in the first block?
2. The second error names a different file. Run `ls -l logs/backup.log` and read the owner's three letters.
3. Each file needs exactly one letter added, for the owner only. `chmod u+x` from the lesson shows the pattern; `w` works the same way.

## Check

```
./backup.sh
./backup.sh
cat logs/backup.log
ls -l backup.sh logs/backup.log
```

You should see one `Backup ran at` line per successful run, `backup.sh` with `x` for its owner, and the log writable by its owner only. Then compare with [solution/README.md](solution/README.md).

## Save your work

```
git init
echo "logs/" > .gitignore
git add .gitignore backup.sh
git commit -m "Fix permissions on the backup script"
```

## Commit message this step uses

`Fix permissions on the backup script`

Next: [step 06, SQL: SELECT and WHERE](../step-06-sql-select-and-where/)
