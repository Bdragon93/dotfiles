" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Specify a directory for plugins
let g:pymode_python = 'python3'

"" Vim settings
set nu
syntax on
set re=0

set clipboard=unnamedplus
set cursorline
set nohlsearch

" Map leader key
let mapleader = " "

"set color
set termguicolors
" set t_Co=256

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" do incremental searching
set incsearch

if has('mouse')
  set mouse=a
endif

set autoread
set autowrite

"" Set no backup
set nobackup
set nowb
set noswapfile

" Undo
set hidden

" Set folding
set foldmethod=indent
set foldlevel=99

set autoindent
set si "smart indent

" set tabs size
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" ignore case when searching
set ignorecase

" Ignore
set wildignore+=*/node_modules/*,*.so,*.swp,*.zip

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

"" Persional Plugins
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'

" Git
Plug 'tpope/vim-fugitive'

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'

" Elixir
Plug 'elixir-editors/vim-elixir'

" Search
set rtp+=~/.fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Syntax
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
let g:vim_jsx_pretty_disable_tsx = 1

Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'

" Editor
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'

" Plug 'autozimu/LanguageClient-neovim', {
    " \ 'branch': 'next',
    " \ 'do': 'bash install.sh',
    " \ }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc-tsserver', {'do': 'npm i package.json && npm i'}

" Go
" Plug 'fatih/vim-go'
" Plug 'sebdah/vim-delve'
" Plug 'SirVer/ultisnips'

" Plug 'ludovicchabant/vim-gutentags'
" let g:gutentags_cache_dir = get(g:, 'gutentags_cache_dir', expand('~/.cache/tags'))

" Initialize plugin system
call plug#end()

"" Vim-airline
" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

"" Set theme
colorscheme neodark_custom
let g:airline_theme='badwolf'

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
" let g:javascript_conceal_arrow_function = "⇒"
set conceallevel=1

"" Map key
" close buffer
nmap qq :q<cr>

" New buffer
map <c-t> :new<cr>
" New vertical buffer
map <c-v> :vsplit<cr>
" New horizontal buffer
map <c-b> :split<cr>

" Quit all 
nmap qa :qa<cr>

" Save 
nmap ss :w<cr>

" Save without format
" nmap <leader>f  <Plug>(coc-format-selected)

" Ag 
" nmap <leader>ag :rg<cr>
nmap <leader>f :Rg<cr>

" jumpDefinition
nmap gd :call CocAction('jumpDefinition', 'drop')<cr>

" Map syntastic
map <leader>ep :lprev<cr>
map <leader>en :lnext<cr>

" refml
map <leader>r :!refmt --in-place %<cr>

" Fast moving tab airline
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab10
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

" NERDTreeToggle
map <Tab> :NERDTreeToggle<CR>

" NERDTreeFind
map nf :NERDTreeFind<CR>

" Gblame
map gb :Git blame<CR>

" copy current path
map fp :let @+ = expand("%")<CR>


" nerdcommenter
let g:NERDSpaceDelims = 1

" Persistent undo
" Don't forget mkdir folder $HOME/.vim/undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

" Closetag
" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js, *.jsx, *.vue, *.ts, *.tsx'
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" command! -bang -nargs=* Ag
  " \ call fzf#vim#ag(<q-args>,
  " \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  " \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  " \                 <bang>0)


" Prevent FZF open file in NERDTree
autocmd VimEnter * nnoremap <silent> <expr> <C-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"

" This is the default extra key bindings
" let g:fzf_action = { 
      " \ 'ctrl-v': 'vsplit' }

" Default fzf layout

" - down / up / left / right
let g:fzf_layout = { 'down': '~30%' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

" Set italic
hi htmlArg gui=italic
hi htmlArg cterm=italic
hi Comment gui=italic
hi Comment cterm=italic
hi Type    gui=italic
hi Type    cterm=italic

" reasonml
let g:LanguageClient_serverCommands = {
    \ 'reason': ['~/Downloads/rls-macos/reason-language-server.exe'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>

" Floating Window
function! OpenFloatTerm()
  let height = float2nr((&lines - 2) / 1.5)
  let row = float2nr((&lines - height) / 2)
  let width = float2nr(&columns / 1.5)
  let col = float2nr((&columns - width) / 2)
  " Border Window
  let border_opts = {
    \ 'relative': 'editor',
    \ 'row': row - 1,
    \ 'col': col - 2,
    \ 'width': width + 4,
    \ 'height': height + 2,
    \ 'style': 'minimal'
    \ }
  let border_buf = nvim_create_buf(v:false, v:true)
  let s:border_win = nvim_open_win(border_buf, v:true, border_opts)
  " Main Window
  let opts = {
    \ 'relative': 'editor',
    \ 'row': row,
    \ 'col': col,
    \ 'width': width,
    \ 'height': height,
    \ 'style': 'minimal'
    \ }
  let buf = nvim_create_buf(v:false, v:true)
  let win = nvim_open_win(buf, v:true, opts)
  terminal
  startinsert
  " Hook up TermClose event to close both terminal and border windows
  autocmd TermClose * ++once :q | call nvim_win_close(s:border_win, v:true)
endfunction

function! FloatCurrent()
  let buf = bufnr('%')
  let height = float2nr((&lines - 2) / 1.5)
  let row = float2nr((&lines - height) / 2)
  let width = float2nr(&columns / 1.5)
  let col = float2nr((&columns - width) / 2)
  let opts = {
    \ 'relative': 'editor',
    \ 'row': row,
    \ 'col': col,
    \ 'width': width,
    \ 'height': height,
    \ }

  let win = nvim_open_win(buf, v:true, opts)
  hi FloatTermNormal term=None guibg=#2d3d45
  call setwinvar(win, '&winhl', 'Normal:FloatTermNormal')
endfunction

map ft :call OpenFloatTerm()<CR>
map fb :call FloatCurrent()<CR>

" Navigate buffer
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" coc-prettier
map <leader>p :Prettier<CR>

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" stylelintplus
let g:coc_global_extensions = ['coc-stylelintplus']

let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
