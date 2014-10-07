set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
"Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/unite.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-bufferline'

" Vundel
call vundle#end()            " required
filetype plugin indent on    " required

" Vim 
syntax on
" set number
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>

" Airline
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
set laststatus=2


""""""" General Settings """""""""



" Quickstart
noremap <silent> <F9> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>


" Compile all the things
map <F4> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	  exec "w"
          exec "!clear"
          exec "!gcc -std=c99 -Wall % -o %< && ./%<"
endfunc

" Grammar this
map <F12> :w!<CR>:!aspell --lang=german check %<CR>:e! %<CR
>
