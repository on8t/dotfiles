local use = require('packer').use

use 'wbthomason/packer.nvim'

-- lua utility functions required by various plugins
use {
  'nvim-lua/plenary.nvim',
  module = 'plenary',
}

use {
  'kyazdani42/nvim-web-devicons',
  module = 'nvim-web-devicons'
}

-- kind of a default options superset for (neo)vim
use 'tpope/vim-sensible'

-- fancy macros to wrap text in brackets/quotes/everything that i forgot how to use
use {
  'kylechui/nvim-surround',
  config = function()
    require('nvim-surround').setup {}
  end,
}

-- auto complete language-specific constructions
-- like if then/end, function()/end in lua
use {
  'RRethy/nvim-treesitter-endwise',
  after = 'nvim-treesitter',
  config = function()
    require('nvim-treesitter.configs').setup {
      endwise = {
        enable = true
      }
    }
  end
}

-- properly repeat surround mappings with .
use 'tpope/vim-repeat'

-- commenting plugin
use {
  'numtostr/comment.nvim',
  config = function()
    require('Comment').setup {}
  end,
}

-- git integration
use {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<Leader>gg', ':Git<cr>', {})
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        signcolumn = false,
        numhl = true,
      }
    end,
  },
}
use {
  'TimUntersberger/neogit',
  requires = 'nvim-lua/plenary.nvim',
}

-- snippets
use {
  'L3MON4D3/LuaSnip', -- engine
  config = function()
    require('luasnip').setup {}
    require('luasnip.loaders.from_vscode').lazy_load {
      exclude = { 'html', 'css' }
    }
  end,
}
use 'rafamadriz/friendly-snippets' -- snippets themself

-- ui for displaying lsp loading progress
use {
  'j-hui/fidget.nvim',
  config = function()
    require('fidget').setup {
      text = {
        spinner = 'line',
      },
    }
  end,
}

-- highlight and list todo/note/fix etc. comments
use {
  'folke/todo-comments.nvim',
  config = function()
    require('todo-comments').setup {}
  end,
}

use {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require('colorizer').setup {}
  end,
}
