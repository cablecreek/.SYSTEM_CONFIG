local set = vim.keymap.set

-- Disable arrow keys in normal mode
set('n', '<up>', '')
set('n', '<left>', '')
set('n', '<right>', '')
set('n', '<down>', '')

-------------------------------------------------------------------------------
-- move lines when highlighted and indent (really nice with harpoon reordering)
set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'move highlighted' })
set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'move highlighted' })

-- keep tabbing (v mode)
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- TODO:
-- if current word == that in the last search
-- true ->  n
-- else --> *n
set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })

-- jumping half page keeping cursor in the middle
set('n', '<C-j>', '<C-d>zz')
set('n', '<C-k>', '<C-u>zz')

-------------------------------------------------------------------------------
--- telescope and lsp
-------------------------------------------------------------------------------
set('n', 'K', vim.lsp.buf.hover)
-- set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[c]ode [a]ction" })

-- To jump back, press <C-t>.
set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', { desc = '[G]oto [D]efinition' })
set('n', 'gr', '<cmd>Telescope lsp_references<CR>', { desc = '[G]oto [R]eferences' })

set('n', 'gv', function()
  require('telescope.builtin').lsp_definitions {
    jump_type = 'vsplit',
  }
end, { desc = '[G]oto [D]efinition [V]ertical Split' })

-------------------------------------------------------------------------------
--- search and replace
-------------------------------------------------------------------------------

-- Replace all - word that you are currently on
set('n', '<leader>r', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'in file [s]earch [r]eplace' })

-- Forward incremental replace - word that you are currently on (one at a time)
-- period "." to repeat action
set('n', '<leader>rf', '*``cgn', { desc = '[s]earch replace [f]orward' })

-- Backward incremental replace - word that you are currently on (one at a time)
-- period "." to repeat action
set('n', '<leader>rb', '#``cgN', { desc = '[s]earch replace [b]ackward' })

-- Visual mode partial word selection (one at a time)
-- period "." to repeat action
-- map same as forward inc. replace as action is the same
set('x', '<leader>rf', [[y/\V<C-R>=escape(@",'/\')<CR><CR>Ncgn]], { desc = '[s]earch replace [f]orward' })

-------------------------------------------------------------------------------
--- misc
-------------------------------------------------------------------------------
set('n', '<leader>u', '<cmd>UndotreeToggle<cr>', { desc = '[u]ndo tree' })
