return {

  { -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },

  { -- nicer-looking tabs with close icons
    'nanozuki/tabby.nvim',
    enabled = true,
    config = function()
      require('tabby.tabline').use_preset 'tab_only'
    end,
  },

  -- show keybinding help window
  {
    'folke/which-key.nvim',
    enabled = true,
    config = function()
      require('which-key').setup {}
      require 'config.keymap'
    end,
  },

  { -- show tree of symbols in the current file
    'hedyhli/outline.nvim',
    cmd = 'Outline',
    keys = {
      { '<leader>lo', ':Outline<cr>', desc = 'symbols outline' },
    },
    opts = {
      providers = {
        priority = { 'markdown', 'lsp', 'norg' },
        -- Configuration for each provider (3rd party providers are supported)
        lsp = {
          -- Lsp client names to ignore
          blacklist_clients = {},
        },
        markdown = {
          -- List of supported ft's to use the markdown provider
          filetypes = { 'markdown', 'quarto' },
        },
      },
    },
  },

  { -- highlight markdown headings and code blocks etc.
    'MeanderingProgrammer/render-markdown.nvim',
    enabled = true,
    -- ft = {'quarto', 'markdown'},
    ft = { 'markdown'},
    -- dependencies = { 'nvim-treesitter/nvim-treesitter' },
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      render_modes = { 'n', 'c', 't' },
      completions = {
        lsp = { enabled = false },
      },
      heading = {
        enabled = false,
      },
      paragraph = {
        enabled = false,
      },
      code = {
        enabled = true,
        style = 'full',
        border = 'thin',
        sign = false,
        render_modes = { 'i', 'v', 'V' }
      },
      signs = {
        enabled = false,
      },
    },
  },

}
