return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',

      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
  },
  config = function()
    -- See `:help telescope` and `:help telescope.setup()`
    require('telescope').setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    -- See `:help telescope.builtin`
    --   local builtin = require 'telescope.builtin'
    --   vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
    --   vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
    --   vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
    --   vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
    --
    --   vim.keymap.set('n', '<leader>sf', function()
    --     builtin.find_files {
    --       hidden = true,
    --       file_ignore_patterns = { '%.git/' },
    --     }
    --   end)
    --
    --   -- small picker
    --   vim.keymap.set('n', '<leader>/', function()
    --     -- You can pass additional configuration to Telescope to change the theme, layout, etc.
    --     builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    --       winblend = 10,
    --       previewer = false,
    --     })
    --   end, { desc = '[/] Fuzzily search in current buffer' })
    --
    --   -- Shortcut for searching your Neovim configuration files
    --   vim.keymap.set('n', '<leader>sn', function()
    --     builtin.find_files { cwd = vim.fn.stdpath 'config' }
    --   end, { desc = '[S]earch [N]eovim files' })
  end,
}
