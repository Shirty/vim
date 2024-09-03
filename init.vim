set runtimepath^=~/.vim
set runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/_vimrc

" installation guide
" - install plug as described on their website
" - install clang power tools vs exension for compile_commands.json support
"   for vs projects
" - install clangd through coc.vim ( write up how here again so it's not
"   forgotten )

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'jiangmiao/auto-pairs'
call plug#end()

lua << EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = {"c", "lua", "vim", "vimdoc", "cpp" },
	sync_install = false,
	-- auto_install = false
	highlight = {
		enable = true,
	}
}
EOF


" " taken directly from https://lazy.folke.io/installation
" 
" lua << EOF
" -- Bootstrap lazy.nvim
" local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
" if not (vim.uv or vim.loop).fs_stat(lazypath) then
"   local lazyrepo = "https://github.com/folke/lazy.nvim.git"
"   local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
"   if vim.v.shell_error ~= 0 then
"     vim.api.nvim_echo({
"       { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
"       { out, "WarningMsg" },
"       { "\nPress any key to exit..." },
"     }, true, {})
"     vim.fn.getchar()
"     os.exit(1)
"   end
" end
" vim.opt.rtp:prepend(lazypath)
" 
" -- Make sure to setup `mapleader` and `maplocalleader` before
" -- loading lazy.nvim so that mappings are correct.
" -- This is also a good place to setup other settings (vim.opt)
" -- vim.g.mapleader = " "
" -- vim.g.maplocalleader = "\\"
" 
" -- Setup lazy.nvim
" require("lazy").setup({
"   spec = {
"     -- import your plugins
"     -- { import = "plugins" },
"   },
"   -- Configure any other settings here. See the documentation for more details.
"   -- colorscheme that will be used when installing plugins.
"   install = { colorscheme = { "habamax" } },
"   -- automatically check for plugin updates
"   checker = { enabled = true },
" })
" EOF
