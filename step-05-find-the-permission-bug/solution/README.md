# Solution: Find the permission bug

Try the exercise first, with the hints in the step README. Reading the answer before you have
looked at the evidence yourself skips the part that teaches you.

## The two causes

| File | Before | Problem | Fix | After |
| --- | --- | --- | --- | --- |
| `backup.sh` | `-rw-r--r--` | No execute (`x`), so it cannot run | `chmod u+x backup.sh` | `-rwxr--r--` |
| `logs/backup.log` | `-r--r--r--` | No write (`w`), so the script cannot add to it | `chmod u+w logs/backup.log` | `-rw-r--r--` |

If your system starts new files as `-rw-rw-r--`, the script shows `-rwxrw-r--` after the fix. The
owner's three letters are what matter.

Each fix adds one letter, for the owner (`u`) only. Other users still cannot change the script, and
the log is still read-only for them.

## Why not the shortcuts

- `sudo ./backup.sh`: while the script has no `x`, even sudo refuses to run it. Once `x` is set,
  root ignores the read-only log and the run "works", but nothing is fixed: the next normal run
  fails again, and a mistake in the script could damage the whole system.
- `chmod 777`: every user on the machine could change the script, so anyone could make your
  nightly backup run their commands.

## What this folder contains

The fixed state you commit: `backup.sh` with `x` for its owner (Git stores it as mode `100755`) and
a `.gitignore` that keeps the `logs/` folder out of history, because logs are output, not source.
After a fresh clone, run `mkdir -p logs` before the first run.
