local wk = require("which-key")

local mappings = {
    { "<leader>e", desc = "Toggle Nvim-Tree" },
    { "<leader>f", desc = "Find in Nvim-Tree" },
    { "<leader><Tab>", desc = "Find Files" },
    { "<leader>g", group = "Version Control" },
    { "<leader>gf", group = "Open Version Control" },
    { "<leader>/", desc = "Open Floating Terminal" },
    { "<leader>t", desc = "Toggle Trouble" },
    { "<leader>r", desc = "Refactor" },
    { "<leader>rn", desc = "Renamer" },
    { "<leader>n", desc = "Remove Highlight" },
    { "<leader>c", desc = "Neovim Configuration" },
    { "<leader>cl", desc = "Light Switch" },

}

wk.add(mappings)

