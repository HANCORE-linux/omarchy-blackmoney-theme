return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#0C0C0C",
        dark_bg = "#0a0a0a",
        darker_bg = "#080808",   -- slightly darker for statusline, etc.
        lighter_bg = "#262626",

        fg = "#d8d4b4",
        dark_fg = "#b7b186",
        light_fg = "#cbcbc8",
        bright_fg = "#ece4d4",
        muted = "#a8a385",

        -- === Stronger syntax colors for light bg ===
        red = "#dd5670",          -- deeper red (errors, vars)
        orange = "#d8785b",       -- better orange (numbers, constants)
        yellow = "#4e5f51",       -- warm class/type yellow
        green = "#2a593f",        -- deeper forest green (strings)
        cyan = "#88c6a3",         -- stronger cyan
        blue = "#d8d4b4",         -- richer function/keyword blue
        purple = "#689e80",       -- deeper purple
        brown = "#e3b130",        -- warm deprecated

        bright_red = "#c23d4a",
        bright_yellow = "#d8785b",
        bright_green = "#2a593f",
        bright_cyan = "#88c6a3",
        bright_blue = "#d8d4b4",
        bright_purple = "#689e80",

        accent = "#d8d4b4",
        cursor = "#9F8A57",
        foreground = "#d8d4b4",
        background = "#0C0C0C",
        selection = "#525b54",           -- soft selection bg
        selection_foreground = "#d8d4b4",
        selection_background = "#0C0C0C",
      },
      on_highlights = function(hl, c)
                -- If it's "too dark", use a lighter grey like #2a2a2a
                hl.CursorLine = { bg = "#191919" } 
                hl.CursorLineNr = { fg = c.orange, bold = true }
            end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "aether" },
  },
}