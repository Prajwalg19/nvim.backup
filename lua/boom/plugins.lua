local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	  use({
        "nvim-treesitter/nvim-treesitter",
        lazy=true,
        config = function()
            require("nvim-treesitter.configs").setup({})
        end,
    }) -- Treesitter Syntax Highlighting
	-- Productivity
	-- use("vimwiki/vimwiki")
	-- use("jreybert/vimagit")

	-- Tim Pope Plugins --
    use({
        "tpope/vim-surround",
        lazy=true
    })

    use({
        "https://github.com/brenoprata10/nvim-highlight-colors",
        lazy=true
    })

    use({ "https://github.com/folke/tokyonight.nvim.git",
    lazy=true,
})
use({
    "https://github.com/nvim-tree/nvim-tree.lua",
    lazy=true
})
use({
    "tpope/vim-commentary",
    lazy=true
})
use({
  "neoclide/coc.nvim",
  lazy = true,
})
    use("jiangmiao/auto-pairs")
    -- use("alvan/vim-closetag")
    -- use("manzeloth/live-server")
    -- use("maxmellon/vim-jsx-pretty")
    -- use("pangloss/vim-javascript")
    -- use({
    --     "leafgarland/typescript-vim",
    --     lazy=true
    -- })
    -- use({
    --     "peitalin/vim-jsx-typescript",
    --     lazy=true
    -- })
use {
  'themaxmarchuk/tailwindcss-colors.nvim',
  lazy=true,
  module = "tailwindcss-colors",
  config = function()
    require("tailwindcss-colors").setup{}
  end
}
    -- use("leafOfTree/vim-matchtag")
    --themes of airline
    use("https://github.com/vim-airline/vim-airline")
    use("prettier/vim-prettier")
-- use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
-- use {
--   'glepnir/dashboard-nvim',
--   event = 'VimEnter',
--   config = function()
--     require('dashboard').setup {
--       -- config
--     }
--   end,
--   requires = {'nvim-tree/nvim-web-devicons'}
-- }
use({
    'nvim-tree/nvim-web-devicons',
    lazy=true
})

use{'https://github.com/windwp/nvim-ts-autotag', 
config = function ()
require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
end

} 
--Multiple Cursors
-- use('terryma/vim-multiple-cursors')
-- use({'https://github.com/burkeholland/simple-react-snippets',lazy=true})
    -- use("https://github.com/dense-analysis/ale")
use({'https://github.com/lukas-reineke/indent-blankline.nvim', lazy=true})
    -- use("https://github.com/iamcco/markdown-preview.nvim")
    --resizeing the window
    use({'https://github.com/breuckelen/vim-resize.git', lazy=true})
    ---color indicator
    use({'https://github.com/norcalli/nvim-colorizer.lua', lazy=true})
    -- use("https://github.com/mattn/emmet-vim")
    -- use({
    --     "https://github.com/neoclide/coc-html",
    --     lazy=true
    -- })
    --Fuzzy finder inside of airline
    -- use("https://github.com/ctrlpvim/ctrlp.vim")
    --theme catppuccin
    use('https://github.com/catppuccin/nvim')
    --move the cursor quickly using f and t 
    use('https://github.com/unblevable/quick-scope.git')
    use({
        'https://github.com/mbbill/undotree',
        lazy=true
    })
--eazy motion
use("https://github.com/easymotion/vim-easymotion")
--formatter for java , C++
use ({'sbdchd/neoformat', lazy=true})
--git 

use({  'voldikss/vim-floaterm'  , lazy=true})

use("https://github.com/neovim/nvim-lspconfig")
	if packer_bootstrap then
		packer.sync()
	end
end)



