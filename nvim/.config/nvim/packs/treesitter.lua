return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    config = function()
      require('nvim-treesitter.configs').setup {
        textobjects = {
          select = {
            enable = true,

            include_surrounding_whitespace = true,
            lookahead = true,
            keymaps = {
              ['aa'] = '@parameter.outer',
              ['ia'] = '@parameter.inner',

              ['af'] = '@function.outer',
              ['if'] = '@function.inner',

              ['ac'] = '@call.outer',
              ['ic'] = '@call.inner',

              ['al'] = '@loop.outer',
              ['il'] = '@loop.inner',

              ['a='] = '@assignment.outer',
              ['i='] = '@assignment.inner',
              ['l='] = '@assignment.lhs',
              ['r='] = '@assignment.rhs',

              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
            },
          },
          swap = {
            enable = true,
            swap_next = {
              ["<leader>a"] = "@parameter.inner",
            },
            swap_previous = {
              ["<leader>A"] = "@parameter.inner",
            },
          },
        }
      }
    end
  },
  {
    'nvim-treesitter/playground',
    config = function()
      require('nvim-treesitter.configs').setup {
        playground = {
          enable = true
        }
      }
    end
  }
}
