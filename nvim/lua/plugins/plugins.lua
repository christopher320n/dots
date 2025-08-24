return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "latte",
        transparent_background = true,
        float = {
          transparent = true,
          solid = true,
        },
      })
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
  { "nvim-lua/popup.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "kyazdani42/nvim-web-devicons" },
  { "kyazdani42/nvim-tree.lua" },
  { "echasnovski/mini.icons" },
  { "rktjmp/lush.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" },
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/nvim-lsp-installer" },
  { "mfussenegger/nvim-jdtls" },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      { "mason-org/mason.nvim" },
      { "mason-org/mason-lspconfig.nvim" },
      { "neovim/nvim-lspconfig" },
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
    }
  },
  {
    "aznhe21/actions-preview.nvim",
    config = function()
      vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
    end,
  },
  {
    "filipdutescu/renamer.nvim",
    branch = "master",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup()
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup()
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
  { "numToStr/Comment.nvim" },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { "akinsho/bufferline.nvim" },
  { "moll/vim-bbye" },
  { "mason-org/mason.nvim" },
  { "mason-org/mason-lspconfig.nvim" },
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup({})
    end,
  },
  { "vim-test/vim-test" },
  {
    "ibhagwan/fzf-lua",
    config = function()
      require("fzf-lua").setup({})
    end,
  },
  { "davidgranstrom/nvim-markdown-preview" },
}
