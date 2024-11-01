require "nvim-tree".setup {
  hijack_cursor = true,
  view = {
    side = "left",
    width = 45,
    adaptive_size = true,
    signcolumn = "no",
    number = true,
  },
  filters = {
    dotfiles = true,
  },
  modified = {
    enable = true,
  },
  actions = {
    file_popup = {
      open_win_config = {
        border = "rounded",
      }
    }
  },
  renderer = {
    highlight_opened_files = "name",
    root_folder_label = false,
    icons = {
      glyphs = {
        git = {
          untracked = "󰵺",
          unstaged = "󰰩",
        },
      },
    },
  },
}

vim.cmd(":NvimTreeToggle")
vim.opt.fillchars = { eob = " "}
vim.cmd('hi NvimTreeWinSeparator guifg=#FFFFFF guibg=NONE')
vim.cmd('hi WinSeparator guifg=#FFFFFF guibg=NONE')


vim.ui.select = function(items, opts, on_choice)
  opts = opts or {}
  opts.border = "rounded"  -- Set tooltip border style here: "single", "double", "rounded", etc.
  vim.ui._default_select(items, opts, on_choice)
end
