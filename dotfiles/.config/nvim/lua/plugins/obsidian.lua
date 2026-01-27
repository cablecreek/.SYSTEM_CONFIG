return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = 'markdown',
  event = {
    'BufReadPre ~/vault/*.md',
    'BufNewFile ~/vault/*.md',
  },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      -- {
      --   name = 'personal',
      --   path = '~/vaults/personal',
      -- },
      {
        name = 'work',
        path = '~/ObsidianVaults/work',
      },
    },

    -- see below for full list of options 👇
  },
}
