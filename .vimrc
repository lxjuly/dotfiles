set nocompatible              " be iMproved, required
filetype off		      " required
syntax on		      " turn on syntax color

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'preservim/nerdcommenter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mileszs/ack.vim'
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>"\b<C-R><C-W>\b"<CR>:cw<CR>

Plugin 'airblade/vim-rooter'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

""
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

Plugin 'prettier/vim-prettier'

"" vim markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"" frontend
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
let g:typescript_indent_disable = 1

"" editorconfig
Plugin 'editorconfig/editorconfig-vim'

"" Julia
Plugin 'JuliaEditorSupport/julia-vim'

call vundle#end()            " required
filetype plugin indent on    " required

" splits settings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Tmux magic
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" vv to generate new vertical split
nnore map <silent> vv <C-w>v

set tags=./tags;/

set backspace=indent,eol,start

set ttimeoutlen=50

" Prefer rg > ag > ack
if executable('rg')
    let g:ackprg = 'rg -S --no-heading --vimgrep'
elseif executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
