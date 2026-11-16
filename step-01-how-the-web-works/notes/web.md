# What I saw in the Network tab

How I measured: opened the page, pressed F12, clicked Network, reloaded the page, then read the
summary at the bottom of the Network tab and sorted by the Time column.

## Site 1: a news site

- Requests:
- Slowest request and its type:
- Status codes that were not 200, and what they mean:

## Site 2: a shop

- Requests:
- Slowest request and its type:
- Status codes that were not 200, and what they mean:

## Site 3: a social network

- Requests:
- Slowest request and its type:
- Status codes that were not 200, and what they mean:

## Example of a filled-in entry

These numbers are only an example; yours will differ.

- Requests: 74
- Slowest request and its type: a large image (type: jpeg), 1.2 s
- Status codes that were not 200, and what they mean:
  - 304 Not Modified: my browser already had this file saved, so the server did not send it again.
  - 301 Moved Permanently: the address moved, and the browser followed the new one by itself.
  - 404 Not Found: one file the page asked for does not exist. The rest of the site still works.

## Status codes to remember

| Code | Meaning | Whose problem |
| --- | --- | --- |
| 200 | OK, here it is | Nobody's |
| 301 | Moved, go to this new address | Nobody's, the browser follows it |
| 304 | Not modified, use the copy you already have | Nobody's |
| 404 | Not found | Usually the link or the URL |
| 500 | Server error | The server's code |
