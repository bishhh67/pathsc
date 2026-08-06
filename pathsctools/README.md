

## What is pathsc?

`pathsc` is a bash mini-project that makes working with shell aliases fast and frictionless. Instead of manually editing your `.bashrc`, you can create, check, show, replace, and remove aliases straight from the terminal.

---

## Usage

```bash
pathsc [flag] [args]
```

---

## Flags

| Flag | Description | Usage |
|------|-------------|-------|
| `-n` | Create a new alias | `pathsc -n <name> <path>` |
| `-c` | Check if an alias already exists | `pathsc -c <name>` |
| `-s` | Show what a given alias points to | `pathsc -s <name>` |
| `-r` | Replace an existing alias | `pathsc -r <name> <new-path>` |
| `-R` | Remove an existing alias | `pathsc -R <name>` |
| `-l` | List all aliases | `pathsc -l` |

---

## Examples

**Create a new alias**
```bash
pathsc -n projects $HOME/dev/projects
```

**Check if an alias exists**
```bash
pathsc -c projects
```

**See where an alias points**
```bash
pathsc -s projects
# → $HOME/dev/projects
```

**Replace an existing alias**
```bash
pathsc -r projects $HOME/work/projects
```

**Remove an alias**
```bash
pathsc -R projects
```

---

## Notes

- Intentionally minimal by design
