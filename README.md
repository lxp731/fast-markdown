# fast-markdown.vim

[中文文档](./README_zh.md)

A lightweight Vim plugin for blazing-fast Markdown editing. Insert headings,
inline formatting, links, images, and tables with just a few keystrokes — no
need to type repetitive syntax by hand.

## Features

- **Headings** — Insert `#` through `######` with automatic newline
- **Inline formatting** — Bold, italic, strikethrough, and inline code
- **Links & images** — Insert `[]()` and `![]()` with placeholder markers
- **Code blocks** — Fenced code blocks with language hint position
- **Tables** — Generate N-column tables (header + separator + body row) and
  append rows
- **Placeholder jumping** — Use `,f` to jump to the next edit point (inspired
  by vim-latex's `<++>` pattern)

## Prerequisites

- Vim 8.0+ or Neovim
- `filetype plugin on` in your vimrc (most distributions enable this by default)

## Installation

### Quick install (curl)

```bash
curl -o $HOME/.vim/fast-markdown.vim \
     --create-dirs \
     https://raw.githubusercontent.com/lxp731/fast-markdown/refs/heads/main/plugin/fast-markdown.vim
```

Then add this line to your `~/.vimrc`:

```vim
source $HOME/.vim/fast-markdown.vim
```

### Plugin manager

**vim-plug:**

```vim
Plug 'lxp731/fast-markdown'
```

**lazy.nvim (Neovim):**

```lua
{ 'lxp731/fast-markdown' }
```

## Key mappings

All mappings work in **insert mode** for Markdown files only (`.md`,
`.markdown`).

> **Tip:** `<++>` is a placeholder marker. After inserting a snippet, your
> cursor lands at the first placeholder. Type your content, then press `,f` to
> jump to the next one. Think of it like Tab in modern snippet engines.

### Headings

| Mapping | Result                     |
|---------|----------------------------|
| `,1`    | `# █` + newline            |
| `,2`    | `## █` + newline           |
| `,3`    | `### █` + newline          |
| `,4`    | `#### █` + newline         |
| `,5`    | `##### █` + newline        |
| `,6`    | `###### █` + newline       |

*(█ = cursor position after insertion)*

### Inline formatting

| Mapping | Result      |
|---------|-------------|
| `,b`    | `**█**`     |
| `,i`    | `*█*`       |
| `,s`    | `~~█~~`     |
| `,d`    | `` `█` ``   |

### Links, images & code blocks

| Mapping | Result                                                |
|---------|-------------------------------------------------------|
| `,a`    | `[█](<++>)`                                           |
| `,p`    | `![█](<++>)`                                          |
| `,c`    | `` ``` `` + newline + `<++>` + newline + `` ``` ``    |

### Tables

| Mapping | Action                                    |
|---------|-------------------------------------------|
| `,t2`   | Insert a **2-column** table (header row + separator + body row) |
| `,t3`   | Insert a **3-column** table               |
| `,t4`   | Insert a **4-column** table               |
| `,t5`   | Insert a **5-column** table               |
| `,t6`   | Insert a **6-column** table               |
| `,l2`   | Append a new **2-column** row             |
| `,l3`   | Append a new **3-column** row             |
| `,l4`   | Append a new **4-column** row             |
| `,l5`   | Append a new **5-column** row             |
| `,l6`   | Append a new **6-column** row             |

**Example** — pressing `,t3` produces:

```
|<++>|<++>|<++>|
|:----:|:----:|:----:|
|<++>|<++>|<++>|
```

Press `,l3` to add another row below the cursor line:

```
|<++>|<++>|<++>|
```

### Navigation & misc

| Mapping  | Action                                          |
|----------|-------------------------------------------------|
| `,f`     | Jump to the next `<++>` placeholder             |
| `<C-s>`  | Save the file (`:w`)                            |

## How `<++>` works

1. You press e.g. `,a` to insert a link — you get `[](<++>)` with the cursor
   between the brackets.
2. Type your link text, then press `,f` — the cursor jumps to `<++>`, the
   placeholder is deleted, and you type the URL.
3. There may be a trailing `<++>` after the snippet (e.g. after `,a` or `,p`)
   — press `,f` again to reach it and continue editing.

**Don't delete `<++>` manually.** It's your navigation system. Jump to it with
`,f` and it will be removed automatically when you start typing.

## License

MIT — see [LICENSE](./LICENSE).
