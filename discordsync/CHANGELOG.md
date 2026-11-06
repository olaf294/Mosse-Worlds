# Changelog
This changelog documents all releases since v1.0.0.

# v1.x
## v1.1.1 — November 06, 2026
### Fixes
- Remove body immediately after sending message to not send any stray data twice
- Send outgoing Discord messages into in-game chat

---

## v1.1.0 — November 06, 2026
### Additions
- `/trigger ds.send` _(in-game command)_ sends a message from a written book into the Discord chat
- Mentions are disabled with this sent message

---

## v1.0.1 — October 29, 2026
### Additions
- !**Permanent**! Uninstall function

### Fixes
- Link in `!version` command will no longer be embedded
- Further `!version` tweaks

---

## v1.0.0 — October 28, 2026
### Additions
- `!version` command
- Events for "Pinned message", "New thread"
- Documentation in `README.md`
- New "lobby" message style

### Fixes
- Finally fix the leave message saying "joined" (yes that was a bug for multiple weeks)