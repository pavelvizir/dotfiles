"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/alvazir/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/alvazir/.local/share/dein')
  call dein#begin('/home/alvazir/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/alvazir/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
"  call dein#add('Shougo/neosnippet.vim')
"  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Valloric/YouCompleteMe')
  call dein#add('vim-airline/vim-airline')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('w0rp/ale')
"  call dein#add('plytophogy/vim-virtualenv')
"  call dein#add('scrooloose/nerdtree')
"  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('tpope/vim-surround')
  call dein#add('tmhedberg/SimpylFold')
  call dein#add('bling/vim-bufferline')
  call dein#add('tpope/vim-vinegar')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-fugitive')
"  call dein#add('tpope/vim-repeat')
  " You can specify revision/branch/tag.
"  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


" set nocompatible              " be iMproved, required
" syntax on
" filetype plugin indent on
set number
" let g:pymode_python = 'python3'
" autocmd FileType python setlocal omnifunc=RopeCompleteFunc
" let g:deoplete#enable_at_startup = 1
" let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '/home/alvazir/.local/share/dein/repos/github.com/Valloric/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" let g:ycm_server_python_interpreter = 'python'
let g:ycm_python_binary_path = 'python'
" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
let g:jedi#completions_enabled = 0
" let g:jedi#use_tabs_not_buffers = 1
" let g:jedi#use_splits_not_buffers = "right"
"
" let g:ale_linters = {
" \   'python': ['pylint'],
" \}
let g:ale_virtualenv_dir_names = ['.venv']
" let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'add_blank_lines_for_python_control_statements', 'isort', 'autopep8', 'yapf']}
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'add_blank_lines_for_python_control_statements', 'isort', 'autopep8']}
" Bind F8 to fixing problems with ALE
nmap <F8> <Plug>(ale_fix)

let g:ale_python_autopep8_options = '--aggressive --aggressive'

set hlsearch
set incsearch

autocmd Filetype python call SetPythonIndentOptions()
function SetPythonIndentOptions()
	set tabstop=4 
	set shiftwidth=4
	set softtabstop=4
	set expandtab
	set smarttab
	set backspace=indent,eol,start
	set ruler
	set showcmd
	set showmatch
	set listchars=tab:>-,trail:-,nbsp:_
	set list
endfunction

"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"map <C-n> :NERDTreeToggle<CR>
""autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"
":nnoremap <Tab> :bnext<CR>
":nnoremap <S-Tab> :bprevious<CR>
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
"autocmd vimenter * :Lexplore
map <C-n> :Lexplore<CR>
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
let g:netrw_winsize = 15
let g:netrw_liststyle = 3
vnoremap <silent> # :s/^/# /<cr>:noh<cr>
vnoremap <silent> ## :s/^# //<cr>:noh<cr>
" mypy problem with finding module in venv
" pylint requires local install
" probably should install in venv, other packages venv --user
" PATH=$HOME/.local/bin:$PATH
" :call dein#recache_runtimepath()
" pip install --user autopep8 flake8 isort yapf
