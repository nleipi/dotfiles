vim.opt.runtimepath:append(',~/.fzf')

vim.o.sessionoptions='blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'

vim.g.mapleader = ','

vim.cmd[[colorscheme tokyonight]]
vim.opt.number = true

require('auto-session').setup {
	auto_session_create_enabled = false
}

require('session-lens').setup {
    path_display={'shorten'},
}

require('lualine').setup{
  options = {
    theme = 'tokyonight',
  },
  sections = {lualine_c = {require('auto-session-library').current_session_name}}
}

require('telescope').setup{
  defaults = {
	wrap_results = true,
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },
  extensions = {
    -- ...
  }
}

require('lspconfig').eslint.setup{}
require('lspconfig').pylsp.setup{}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
