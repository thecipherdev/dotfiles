-- Set <space> as the leader key

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('i', 'jk', '<ESC>')

-- stay on indent mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- rename buffer
vim.keymap.set('n', '<leader>sS', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")
--
-- change J default behaviour
vim.keymap.set('n', 'J', 'mzJ`z')

-- keep search term to be in the middle
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- mini.files
vim.keymap.set('n', '\\', ':lua MiniFiles.open()<CR>')

-- paste os clipboard (not working for some reason)
-- vim.keymap.set('n', '<leader>y', '"+y')
-- vim.keymap.set('v', '<leader>y', '"+y')
-- vim.keymap.set('n', '<leader>Y', '"+Y')

-- quickfix navigation
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- floating terminal
vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>', { desc = '[T]oggle terminal' })
vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Toggle [f]loating term' })
vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical size=40<CR>', { desc = 'Toggle [v]ertical term' })
vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal size=15<CR>', { desc = 'Toggle [v]ertical term' })
