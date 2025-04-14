# note_taking_snippets.nvim

A port the popular snippets made by Gilles Castel to NeoVim using LuaSnip

## Requirements

- `LuaSnip`
- `vimtex` for LaTeX snippets
- `tree-sitter` for Typst snippets

## Installation

With `lazy.nvim`

``` lua
  {
    "WayneYam/note_taking_snippets.nvim",
    ft = { "typst", "tex" },
    opts = {},
  },
```

## Status

The LaTeX snippets are pretty much complete, and I've been using it for more than a year now, however they probably won't be maintained anymore since I'm now using Typst.

The Typst snippets are much more basic, since there's not much of a need for it.
