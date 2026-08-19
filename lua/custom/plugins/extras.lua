local function gh(repo) return 'https://github.com/' .. repo end

-- nvim-ts-autotag: auto-close / rename JSX tag pairs
vim.pack.add { gh 'windwp/nvim-ts-autotag' }
require('nvim-ts-autotag').setup {}

-- trouble.nvim: workspace diagnostics / references list
vim.pack.add { gh 'folke/trouble.nvim' }
require('trouble').setup {}
vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Diagnostics (Trouble)' })
vim.keymap.set('n', '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', { desc = 'Buffer diagnostics (Trouble)' })

-- flash.nvim: label-based motion
vim.pack.add { gh 'folke/flash.nvim' }
require('flash').setup {}
vim.keymap.set({ 'n', 'x', 'o' }, 's', function() require('flash').jump() end, { desc = 'Flash' })

-- Indentation detection
vim.pack.add { gh 'NMAC427/guess-indent.nvim'}
require('guess-indent').setup {}
