# MathNotationShortcuts

An AutoHotkey script providing toggleable hotstrings for quickly typing common discrete math and logic symbols like ∀, ∃, ∑, ∅, and more. Ideal for students, educators, and anyone who frequently writes mathematical notation.

## Features

- Toggle math script mode ON/OFF with **Ctrl + Alt + Shift + M**
- When ON, type shortcuts like `sum`, `forall`, or `exists` to insert symbols (e.g., ∑, ∀, ∃)
- When OFF, shortcuts insert their normal text (e.g., typing `sum` just outputs "sum")

## Usage

1. Ensure you have [AutoHotkey](https://www.autohotkey.com/) installed.
2. Run `MathNotationShortcuts.ahk` by double-clicking it.
3. Use the following hotstrings when math mode is ON:

| Shortcut | Output Symbol |
| -------- | ------------- |
| sum      | ∑             |
| prod     | ∏             |
| forall   | ∀             |
| exists   | ∃             |
| in       | ∈             |
| empty    | ∅             |
| and      | ∧             |
| or       | ∨             |
| not      | ¬             |
| implies  | →             |
| iff      | ↔             |
| !=       | ≠             |

4. Press **Ctrl + Alt + Shift + M** to toggle math mode ON or OFF. A message box confirms the current state.

---

## ⚙️ Configuration

- The script saves your toggle preference in `settings.ini` in the same folder.
- Feel free to customize or add new hotstrings by editing `MathNotationShortcuts.ahk`.

---

## 📄 License

MIT License — see the root repo’s [`LICENSE`](../LICENSE) for details.

---

## 🤝 Contribution

Suggestions and pull requests welcome! Open an issue or submit changes to improve or add new shortcuts.
