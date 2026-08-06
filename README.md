
> A terminal utility for creating and managing shell shortcuts — built by 

---

`pathsc` is a bash mini-project that makes working with shell shortcuts fast and frictionless. Instead of manually editing your `.bashrc`, you can create, check, show, replace, and remove shortcuts straight from the terminal.

~~The feature list is still expanding~~ Its completed (yaay) and yes, it's purposefully made less versatile than it could be.

This project was also a means for me to learn VIM.
---

## Usage

```bash
pathsc [flag] [args]
```

---

## Flags

| Flag | Description | Usage |
|------|-------------|-------|
| `-n` | Create a new shortcut | `pathsc -n <name> <path>` |
| `-c` | Check if a shortcut already exists | `pathsc -c <name>` |
| `-s` | Show what a given shortcut points to | `pathsc -s <name>` |
| `-r` | Replace an existing shortcut | `pathsc -r <name> <new-path>` |
| `-R` | Remove an existing shortcut | `pathsc -R <name>` |
| `-l` | Lists all the shortcuts | `pathsc -l` |

---

## Examples

**Create a new shortcut**
```bash
pathsc -n projects ~/dev/projects
```

**Check if a shortcut exists**
```bash
pathsc -c projects
```

**See where a shortcut points**
```bash
pathsc -s projects
# → ~/dev/projects
```

**Replace an existing shortcut**
```bash
pathsc -r projects ~/work/projects
```

**Remove a shortcut**
```bash
pathsc -R projects
```

**List all shortcuts**
```bash
pathsc -l
```


---

## Notes

- Developed and maintained by **path**
- Intentionally minimal by design
- ~~More flags and features coming soon~~
- This is considered completed for now
