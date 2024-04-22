-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    {
      '<leader>n',
      ':Neotree reveal<CR>',
      desc = '[N]eoTree reveal',
    },
  },
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'open_default',
      window = {
        mappings = {
          ['<leader>n'] = 'close_window',
        },
      },
    },
  },
  config = function()
    require('neo-tree').setup {
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
