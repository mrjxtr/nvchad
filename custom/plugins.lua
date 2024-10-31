local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = 'VeryLazy',
    opts = function()
      return require 'custom.configs.null-ls'
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        'basedpyright',
        'pyright',
        'prettier',
        'ruff',
        'black',
        'ruff-lsp',
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        side = "right"
      },
    },
  },
}
return plugins
