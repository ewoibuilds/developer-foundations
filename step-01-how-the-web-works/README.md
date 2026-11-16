# Step 01: How the web works

Lesson: **How the web works** (on ewoibuilds.com: `/lessons/how-the-web-works`)

## Your workspace folder

`~/ewoi-learning/notes` (your home folder, then `ewoi-learning`, then `notes`).

## What this step adds

Your learning workspace, `~/ewoi-learning`, and a `notes` folder with `web.md`: what you saw in the browser's Network tab on three websites. There is no code yet, and no Git yet: you install Git in step 02.

## The files

```
notes/
└── web.md      an example of the notes, with space for your own
```

## How to do it

On macOS or Linux:

```
mkdir -p ~/ewoi-learning/notes
```

On Windows, in PowerShell:

```
mkdir ~\ewoi-learning\notes
```

Then save an empty `web.md` in that folder with a plain text editor, open the Network tab (press F12, click **Network**, reload the page) on three websites, and fill in the notes. Compare yours with [notes/web.md](notes/web.md).

## Expected result

```
ewoi-learning/
└── notes/
    └── web.md
```

`web.md` lists, for each of three websites: the number of requests, the slowest request and its type, and any status code that is not 200 with what it means.

## Check

- You can name what DNS, HTTPS, a request, a response and a status code are, in your own words.
- Every status code in your notes has a meaning next to it (2xx fine, 3xx go elsewhere or use your saved copy, 4xx a problem with the request, 5xx a problem on the server).

## Commit

None yet. From step 02 on, every step ends with a commit.

Next: [step 02, your first commit](../step-02-your-first-commit/)
