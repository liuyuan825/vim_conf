-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
     -- Packer can manage itself
     use 'wbthomason/packer.nvim'

     --[[
     use({'jakewvincent/mkdnflow.nvim',
        rocks = 'luautf8',
      })
     --]]

    -- feline
    use { 'feline-nvim/feline.nvim', branch = '0.5-compat' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- theme
    use "EdenEast/nightfox.nvim"

    use 'kyazdani42/nvim-web-devicons'

    -- Treesitter
    use ({
         'nvim-treesitter/nvim-treesitter',
         run = function()
             local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
             ts_update()
         end
    })

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    } 

    -- markdown image
    -- use 'ekickx/clipboard-image.nvim'

    use 'nanozuki/tabby.nvim'
    
    -- use 'ggandor/leap.nvim'

    use {
        'sudormrfbin/cheatsheet.nvim',

        requires = {
          {'nvim-telescope/telescope.nvim'},
          {'nvim-lua/popup.nvim'},
          {'nvim-lua/plenary.nvim'},
        }
    }
    --[[
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    --]]

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {}
        end
    }

    use 'echasnovski/mini.cursorword' 
    use "lukas-reineke/indent-blankline.nvim"

    use {"glepnir/lspsaga.nvim", branch = "main"}

    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- use 'neovim/nvim-lspconfig'
    -- use 'dense-analysis/ale'

    use {'neoclide/coc.nvim', branch = 'release'}

end)
