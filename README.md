# Developer foundations

**Learn. Build. Ship.** From zero to your first project on the internet: how the web works, Git, the terminal and databases, one small step at a time.

This repository holds the finished code and notes for every step of the free **Developer foundations** (on ewoibuilds.com: `/paths/developer-foundations`) path. Each step folder shows what your own work should look like at the end of that lesson, so you can compare, or start again from the step before.

## Start here

Follow the lessons in order. Each one tells you which folder to work in and ends with a commit.

| Step | Folder | Lesson | You work in |
| --- | --- | --- | --- |
| 01 | [step-01-how-the-web-works](step-01-how-the-web-works/) | **How the web works** (on ewoibuilds.com: `/lessons/how-the-web-works`) | `~/ewoi-learning/notes` |
| 02 | [step-02-your-first-commit](step-02-your-first-commit/) | **Your first commit, explained** (on ewoibuilds.com: `/lessons/your-first-commit-explained`) | `~/ewoi-learning/first-app` |
| 03 | [step-03-branches-without-fear](step-03-branches-without-fear/) | **Branches without fear** (on ewoibuilds.com: `/lessons/branches-without-fear`) | `~/ewoi-learning/first-app` |
| 04 | [step-04-linux-files-and-permissions](step-04-linux-files-and-permissions/) | **Linux files and permissions** (on ewoibuilds.com: `/lessons/linux-files-and-permissions`) | `~/ewoi-learning/notes/linux` |
| 05 | [step-05-find-the-permission-bug](step-05-find-the-permission-bug/) | **Find the permission bug** (on ewoibuilds.com: `/exercises/find-the-permission-bug`) (exercise) | `~/ewoi-learning/linux-exercise` |
| 06 | [step-06-sql-select-and-where](step-06-sql-select-and-where/) | **SQL: SELECT and WHERE** (on ewoibuilds.com: `/lessons/sql-select-and-where`) | `~/ewoi-learning/sql` |
| 07 | [step-07-write-the-query](step-07-write-the-query/) | **Write the query** (on ewoibuilds.com: `/exercises/write-the-query`) (exercise) | `~/ewoi-learning/sql` |

The path ends with a project you publish yourself: **Your portfolio website, live** (on ewoibuilds.com: `/projects/portfolio-website`), with its template in [portfolio-website](https://github.com/ewoibuilds/portfolio-website).

## What you need

- A laptop or desktop and a stable internet connection
- Operating system: Windows 10 or 11, macOS or Linux
- Prerequisites: none. Start at step 01.
- Tools (search for each on its official site, download only from the official site, and check the address before installing):
  - A web browser (Chrome, Firefox, Edge or Safari): steps 01 onwards
  - Git 2.28 or newer: search for "Git official download". On Windows it includes **Git Bash**, the terminal for steps 02 and 03
  - A code editor, such as Visual Studio Code: search for "VS Code official download"
  - On Windows, WSL with Ubuntu for steps 04 to 07: in PowerShell as administrator, run `wsl --install`
  - SQLite 3.33 or newer for steps 06 and 07: built into macOS; on Ubuntu or WSL, `sudo apt install sqlite3`

## Git setup (once)

1. Set your identity, with the email you use on GitHub:

   ```
   git config --global user.name "Your Name"
   git config --global user.email "you@example.com"
   git config --global init.defaultBranch main
   ```

   On Windows, WSL is a separate system: run these again inside Ubuntu before step 04.
2. To push your own copy to GitHub, set up an SSH key (`ssh-keygen -t ed25519 -C "you@example.com"`, add the `.pub` key on GitHub under Settings, SSH and GPG keys, test with `ssh -T git@github.com`) or a fine-grained personal access token used as your password over HTTPS. Keep the private key and the token to yourself.
3. Create your own repository on GitHub by hand, then clone it by SSH (`git@github.com:USER/REPO.git`) or HTTPS (`https://github.com/USER/REPO.git`).
4. This repository's `.gitignore` already keeps `.env`, `*.db`, `node_modules/` and `vendor/` out of Git. Keep secrets in `.env` on your computer and never commit them.

## How to use this repository

Download it once:

```
git clone https://github.com/ewoibuilds/developer-foundations.git
cd developer-foundations
```

Then, for each step, either:

- **Compare:** do the lesson in your own `~/ewoi-learning` folder first, then compare your files with the step folder (`diff -r` on macOS and Linux shows every difference), or
- **Start from the step before:** copy the previous step's files into your workspace and carry on from there. Each step README shows the exact commands.

The step folders are not Git repositories of their own: you make your own repositories in `~/ewoi-learning`, as the lessons show. Git does not keep empty folders or read-only files, so the step 05 starter has a `setup.sh` that recreates the broken state.

## Check it works

- Steps 02 to 07: `git status` in your workspace folder says `nothing to commit, working tree clean`, and `git log --oneline` shows the commit messages listed in the step README.
- Step 04: `./hello.sh` prints `Hello from my script`.
- Step 05: `./backup.sh` adds a `Backup ran at` line to `logs/backup.log` every time.
- Steps 06 and 07: `sh create-database.sh` prints the row count, and your queries print the expected output in the step README.

## Project structure

```
developer-foundations/
├── step-01-how-the-web-works/            notes/web.md, your Network tab notes
├── step-02-your-first-commit/            first-app/ after five commits
├── step-03-branches-without-fear/        first-app/ after two branches and two resolved conflicts
├── step-04-linux-files-and-permissions/  notes/linux/ with two runnable scripts
├── step-05-find-the-permission-bug/      starter/ (broken) and solution/ (fixed)
├── step-06-sql-select-and-where/         sql/ with lessons.sql and practice.sql
└── step-07-write-the-query/              starter/ (the shop and six questions) and solution/
```

## Troubleshooting

| Problem | Fix |
| --- | --- |
| `git: command not found` or "not recognised" | Install Git from the official site, then open a new terminal |
| `Please tell me who you are` | Run the `git config --global` lines in Git setup (again inside WSL on Windows) |
| `fatal: not a git repository` | `cd` into your workspace folder for the step, or run `git init` where the lesson says |
| PowerShell writes strange characters into files | Use Git Bash for steps 02 and 03, and Ubuntu (WSL) for steps 04 to 07 |
| `Permission denied` when running a `.sh` file | Read it with `ls -l`; add `x` for the owner with `chmod u+x file`, or run helpers with `sh file` |
| `sqlite3: command not found` | `sudo apt update`, then `sudo apt install sqlite3` (Ubuntu or WSL) |
| Query results all on lines with `\|` and no headings | Add `-header -column`, or type `.headers on` and `.mode column` at the `sqlite>` prompt |
| `table lessons already exists` | The table is there already. Use `sh create-database.sh` to start clean |

## Using AI on this repository

Learn the step first, then ask for help with something you can check. A good prompt:

> I am a complete beginner on step 05 of Developer foundations (Linux permissions, Ubuntu on WSL). I ran `./backup.sh` and saw: [paste the message]. Here is `ls -l backup.sh logs/backup.log`: [paste it]. Do not give me the command. Explain in simple words what each permission string means and which letter is missing.

Check every answer against the lesson and the official docs (git-scm.com, sqlite.org, developer.mozilla.org), and never paste passwords, keys or tokens into a chat.

## Support Ewoi Builds

Lessons stay free. If this helped, star the repository, follow the organisation and share it with someone who is starting out.

Follow along: GitHub (github.com/ewoibuilds), TikTok (@ewoibuilds), Instagram (@ewoibuilds).

## Licence

MIT. See [LICENSE](LICENSE).
