-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  lazy = false, -- force load for netrw highjack to work on startup
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    {
      '<leader>n',
      ':Neotree position=current reveal<CR>',
      desc = '[N]eoTree reveal',
    },
  },
  config = function()
    require('neo-tree').setup {
      window = {
        position = 'current',
      },
      filesystem = {
        hijack_netrw_behavior = 'open_current',
        window = {
          mappings = {
            ['<leader>n'] = 'close_window',
          },
        },
      },
      event_handlers = {
        {
          event = 'file_opened',
          handler = function(_)
            -- auto close
            -- vimc.cmd("Neotree close")
            -- OR
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
    }
  end,
}
