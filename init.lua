require 'config.global'
require 'config.lazy'
require 'config.autocommands'

vim.cmd.colorscheme 'onedark_dark'
vim.api.nvim_set_hl(0, 'TermCursor', { fg = '#A6E3A1', bg = '#A6E3A1' })
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = 'dimgray', bg = '' })
