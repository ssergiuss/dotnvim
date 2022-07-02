"
" Vim-plug Configuration
"

" Set plugin directory
call plug#begin('~/.nvim/plugged')

" An arctic, north-bluish clean and elegant Vim color theme
Plug 'arcticicestudio/nord-vim'

" Lean & mean status/tabline for Vim that's light as air
Plug 'bling/vim-airline'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plug 'ctrlpvim/ctrlp.vim'

" This is an EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" A true color Vim colorscheme based on sdras/night-owl-vscode-theme
Plug 'haishanh/night-owl.vim'

" Incsearch.vim incrementally highlights ALL pattern matches unlike default 'incsearch'
Plug 'haya14busa/incsearch.vim'

" jsdoc.vim generates JSDoc block comments based on a function signature
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}

" This repository contains snippets files for various programming languages
Plug 'honza/vim-snippets'

" A 24bit colorscheme for Vim, Airline and Lightline
Plug 'jacoborus/tender.vim'

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" A dark Vim/Neovim color scheme for the GUI and 16/256/true-color terminals,
" based on FlatColor, with colors inspired by the excellent One Dark syntax
" theme for the Atom text editor
" TODO remove?
"Plug 'joshdick/onedark.vim'

" A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" Run your favorite search tool from Vim, with an enhanced results list
Plug 'mileszs/ack.vim'

" Configure tab labels within Terminal Vim with a very succinct output
Plug 'mkitt/tabline.vim'

" Numbers.vim is a plugin for intelligently toggling line numbers
Plug 'myusuf3/numbers.vim'

" Dark and Light Themes for neovim >= 0.5 based on Atom One Dark & Atom One
" Light theme written in lua with TreeSitter syntax highlight
Plug 'navarasu/onedark.nvim'

" PaperColor Theme
Plug 'NLKNguyen/papercolor-theme'

" JavaScript bundle for Vim, this bundle provides syntax highlighting and improved indentation
" TODO keep???
"Plug 'pangloss/vim-javascript'

Plug 'projekt0n/github-nvim-theme'

" One of the best Atom Colorscheme now for Vim and NeoVim
Plug 'rakr/vim-one'

" Gruvbox Material is a modified version of Gruvbox, the contrast is adjusted to be softer in order to protect developers' eyes
Plug 'sainnhe/gruvbox-material'

" The NERD tree allows you to explore your filesystem and to open files and directories
Plug 'scrooloose/nerdtree'

" Comment functions so powerful - no comment necessary
Plug 'scrooloose/nerdcommenter'

" Syntastic is a syntax checking plugin for Vim created by Martin Grenfell
Plug 'scrooloose/syntastic'

" A collection of language packs for Vim
Plug 'sheerun/vim-polyglot'

" UltiSnips is the ultimate solution for snippets in Vim
Plug 'SirVer/ultisnips'

" A Vim bundle with snippets for JavaScript developers
Plug 'ssergiuss/ultisnips-javascript'

" A Vim bundle with snippets for PHP developers
Plug 'ssergiuss/ultisnips-php'

" This is version 2 of PDV - PHP Documentor for Vim, your tool of choice for generating PHP doc blocks
Plug 'tobyS/pdv'

" Vmustache is an implementation of the Mustache template system in VIMScript
Plug 'tobyS/vmustache'

" Molokai theme
Plug 'tomasr/molokai'

" I'm not going to lie to you; fugitive.vim may very well be the best Git wrapper of all time
Plug 'tpope/vim-fugitive'

" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim
Plug 'valloric/youcompleteme'

" Vim-airline themes
Plug 'vim-airline/vim-airline-themes'

" This plugin add capability to search in folders via NERDtree
Plug 'vim-scripts/nerdtree-ack'

" This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()

"
" END Vim-plug Configuration
"

"
" Env Configuration
"

let g:python_host_prog='/Users/sergiu/.pyenv/versions/py2nvim/bin/python'
let g:python3_host_prog='/Users/sergiu/.pyenv/versions/py3nvim/bin/python'

"
" END Env Configuration
"

"
" Global Configuration
"

" Switch on syntax highlighting
syntax enable

" Set theme and airline theme
"
" One
"colorscheme one
"set background=dark
"let g:airline_theme='one'
"
" PaperColor
"colorscheme PaperColor
"set background=dark
"let g:airline_theme='papercolor'
"
" Molokai
"colorscheme molokai
"let g:airline_theme='molokai'
"
" Tender
"colorscheme tender
"let g:airline_theme='tender'
"let g:lightline={'colorscheme':'tender'}
"
" NightOwl
"colorscheme night-owl
"let g:lightline={'colorscheme':'nightowl'}
"
" Gruvbox Material
"colorscheme gruvbox-material
"let g:airline_theme='gruvbox_material'
"let g:lightline={'colorscheme':'gruvbox_material'}
"set background=dark
"let g:gruvbox_material_background='hard'
"
" OneDark
"let g:onedark_config = {
    "\ 'style': 'darker',
"\}
colorscheme onedark
"let g:airline_theme='onedark'
"let g:lightline={'colorscheme':'onedark'}
"
" Nord
"colorscheme nord
"let g:airline_theme='nord'
"let g:lightline={'colorscheme':'nord'}
"let g:nord_cursor_line_number_background = 1
"let g:nord_uniform_status_lines = 1
"let g:nord_bold_vertical_split_line = 1
"let g:nord_uniform_diff_background = 1
"let g:nord_italic = 1
"let g:nord_underline = 1
"
" GitHub
"colorscheme github_dark
"colorscheme github_dimmed
"colorscheme github_dark_default

" Set auto-indent options
set autoindent
set cindent
set smartindent

" Do not allow lines longer than the width of the window to wrap and continue displaying on the next line
set nowrap

" Show absolute line number of the current line
set number

" Set global tabs and spacing
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show a status bar
set ruler
set laststatus=2

" Scroll the window with 10 lines around
set scrolloff=10

" Allow backspacing over autoindent, line breaks, the start of insert
set backspace=indent,eol,start

" Highlight all search matches
set hlsearch

" Set search case insensitive
set ic

" Remove vertical scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Set leader key
let mapleader = ','

" Highlight the 81st column and the 121st, 122nd columns
let &colorcolumn='81,121,122'

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Maintain undo history between sessions
set undofile
set undodir=~/.nvim/undo

"
" END Global Configuration
"

"
" Key Bindings
"

" Disable the cursor/arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Switch between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" 81 characters vertical resize
noremap <leader>vr <C-w>=<CR> :vertical resize 85<CR>

" Vertical resize
noremap <leader>v1 :vertical resize +10<CR>
noremap <leader>v2 :vertical resize +20<CR>
noremap <leader>v3 :vertical resize +30<CR>
noremap <leader>v4 :vertical resize +40<CR>
noremap <leader>v5 :vertical resize +50<CR>
noremap <leader>v6 :vertical resize +60<CR>
noremap <leader>v7 :vertical resize +70<CR>
noremap <leader>v8 :vertical resize +80<CR>
noremap <leader>v9 :vertical resize +90<CR>

" Press Space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Reveal current file in tree
noremap <leader>n :NERDTreeFind<CR>

" Search for visually selected text
vnoremap // y/<C-R>"<CR>

" Keep only the active tab and split
noremap <C-w>O :tabo \| on<CR>

" Open new tab page
noremap tn :tabnew<CR>
" Close all tab pages except the current one
noremap to :tabonly<CR>
" Close the current tab page
noremap tc :tabclose<CR>

" Save session
noremap <C-s>s :mksession! session.nvim<CR>
" Restore session
noremap <C-s>r :source session.nvim<CR>

" Push changes
noremap <C-b>p :! ./push<CR>

"
" END Key Bindings
"

"
" Plugins Configuration
"

" ctrlpvim/ctrlp.vim
let g:ctrlp_working_path_mode = 0
let g:ctrlp_abbrev = {
    \ 'abbrevs': [{
        \ 'pattern': '_',
        \ 'expanded': '',
        \ 'mode': 'pfrz'
    \ }]
\ }
" If a file is already open, open it again in a new pane instead of switching
" to the existing pane
let g:ctrlp_switch_buffer = 'et'
" Ignore files in .gitignore (makes the search significantly faster)
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" Search for files by the word under the cursor
map <C-p><C-w> <C-p><C-\>w
" Set max results to 50
let g:ctrlp_match_window = 'results:50'

" haya14busa/incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" heavenshell/vim-jsdoc
"nmap <silent> <C-l> <Plug>(jsdoc)
"nmap <silent> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)

" junegunn/vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
let g:easy_align_ignore_groups = ['String']

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1

" Raimondi/delimitMate
let delimitMate_expand_cr = 2

" SirVer/ultisnips
let g:UltiSnipsExpandTrigger='<C-s>'
let g:UltiSnipsJumpForwardTrigger='<C-l>'
let g:UltiSnipsJumpBackwardTrigger='<C-h>'

" scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

" scrooloose/syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" tobyS/pdv
let g:pdv_template_dir = $HOME .'/.nvim/plugged/pdv/templates_snip'
nnoremap <C-a> :call pdv#DocumentWithSnip()<CR>

" valloric/youcompleteme
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_seed_identifiers_with_syntax = 0
let g:ycm_use_ultisnips_completer = 1

" Yggdroot/indentLine
let g:indentLine_char = '‧'

"
" END Plugins Configuration
"
