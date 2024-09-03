set noerrorbells
set visualbell
set t_vb=

noremap <c-s> :w<cr>
noremap <leader>q :q<cr>
noremap <leader>Q :q!<cr>
noremap <M-i> :cnext<cr>
noremap <M-o> :cprevious<cr>
nnoremap <leader>n :noh<cr>

colorscheme darkblue
" darkblue
" retrobox
" sorbet
" elflord
" murphy

if !exists("g:neovide")
	set cursorline
set cursorlineopt=screenline
endif

set relativenumber
set numberwidth=10
set autoindent
set smartindent

set tabstop=2
set shiftwidth=0

set backspace=indent,eol,start

" <cr> alternative in commands
" need to still make it so I can use 
" tabs and spaces needs to be handled

" need to learn to use <c-j> to go down
" <c-m> or <c-j> to run the command
