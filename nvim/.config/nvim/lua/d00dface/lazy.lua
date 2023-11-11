local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    --| Telescope
    { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { { 'nvim-lua/plenary.nvim' } } },
    --| Colorscheme
        --| Gruvbox
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
        --| Tokyo Night
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}, },
    --| Treesitter
    { 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate' },
    'nvim-treesitter/playground',
    'nvim-treesitter/nvim-treesitter-context',
    --| Plenary
    'nvim-lua/plenary.nvim',
    --| Harpoon
    'theprimeagen/harpoon',
    --| UndoTree
    'mbbill/undotree',
    --| Fugitive
    'tpope/vim-fugitive',
    --| Commentary
    'tpope/vim-commentary',
    --| Neorg
    'nvim-neorg/neorg',
    --| LSP Zero
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
        --| LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
        --| Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},
        --| Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
    --| Trouble
    { "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, },
})
