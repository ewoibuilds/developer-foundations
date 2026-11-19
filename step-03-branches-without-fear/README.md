# Step 03: Branches without fear

Lesson: [Branches without fear](https://ewoibuilds.com/lessons/branches-without-fear)

## Your workspace folder

`~/ewoi-learning/first-app`, the same repository as step 02 (Git Bash on Windows).

## What this step adds

Work on branches, merged back into `main`: an about page, a contact page, and two merge conflicts you create on purpose and resolve.

## The files

```
first-app/
├── .gitignore
├── README.md    one line: the title you chose when resolving the first conflict
├── about.md     added on the add-about-page branch
├── contact.md   added on the add-contact branch (practice task)
└── notes.txt    one line: your resolution of the second conflict (practice task)
```

Your `README.md` title and `notes.txt` sentence can differ: you chose them when you resolved each conflict.

## How to run it

Start from the end of step 02 (or copy [step 02's first-app](../step-02-your-first-commit/first-app/) and run its commands). Then:

```
cd ~/ewoi-learning/first-app
git switch -c add-about-page
echo "This app helps me learn Git." > about.md
git add about.md
git commit -m "Add an about page"
git switch main
git merge add-about-page
git branch -d add-about-page
git switch -c new-title
echo "# Ewoi's Git practice app" > README.md
git commit -am "Change the README title"
git switch main
echo "# My Git learning app" > README.md
git commit -am "Rename the app in the README"
git merge new-title
```

The last command stops with a conflict. Open `README.md`, keep the line you want, delete the three marker lines, then:

```
git add README.md
git commit -m "Merge new-title and combine both README titles"
git branch -d new-title
```

Practice task, the same pattern:

```
git switch -c add-contact
echo "Questions? Open an issue on GitHub." > contact.md
git add contact.md
git commit -m "Add a contact page"
git switch main
git merge add-contact
git branch -d add-contact
git switch -c better-notes
echo "Git keeps every snapshot I commit." > notes.txt
git commit -am "Reword the notes"
git switch main
echo "Commits are snapshots of my project." > notes.txt
git commit -am "Rewrite the notes"
git merge better-notes
```

Resolve `notes.txt` the same way, then:

```
git add notes.txt
git commit -m "Merge better-notes and combine both notes"
git branch -d better-notes
```

## Expected output

The first merge says `Fast-forward`. Each conflict says:

```
CONFLICT (content): Merge conflict in README.md
Automatic merge failed; fix conflicts and then commit the result.
```

At the end, `git log --oneline --graph` shows the whole history, with step 02's five commits at the bottom (your IDs will differ):

```
*   3d09d4c Merge better-notes and combine both notes
|\
| * a3c018d Reword the notes
* | 51da7cb Rewrite the notes
|/
* d1d125a Add a contact page
*   f2f0373 Merge new-title and combine both README titles
|\
| * 246118b Change the README title
* | 0c0202d Rename the app in the README
|/
* 70e6922 Add an about page
* 25c155f Add a note about git status
* dde06fc Add learning notes
* c73994e Describe the app in the README
* 69b0b34 Add a README
* 892828d Ignore secrets and downloaded packages
```

## Check

- `git branch` shows only `* main`.
- `git status` says `nothing to commit, working tree clean`.
- No file contains `<<<<<<<`, `=======` or `>>>>>>>`.

If you get lost in the middle of a merge, `git merge --abort` puts everything back as it was before the merge.

## Commit messages this step uses

1. `Add an about page`
2. `Change the README title` (on new-title)
3. `Rename the app in the README` (on main)
4. `Merge new-title and combine both README titles`
5. `Add a contact page`
6. `Reword the notes` (on better-notes)
7. `Rewrite the notes` (on main)
8. `Merge better-notes and combine both notes`

Next: [step 04, Linux files and permissions](../step-04-linux-files-and-permissions/)

<!-- ewoi:step -->
---

**Next:** [step-04-linux-files-and-permissions](../step-04-linux-files-and-permissions/) &nbsp;&middot;&nbsp; **Stuck?** [Ask with the "I am stuck" form](https://github.com/ewoibuilds/developer-foundations/issues/new/choose) &nbsp;&middot;&nbsp; **Helped?** Star [the repo](https://github.com/ewoibuilds/developer-foundations) and follow [Ewoi Builds](https://github.com/ewoibuilds).
<!-- /ewoi:step -->
