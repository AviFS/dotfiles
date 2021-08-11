" Shortcut to look up keyword in help: Hover & Enter :h <C-r><C-W>
"Vundle Stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
set ttimeoutlen=50

" Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'bfrg/vim-cpp-modernc'
Plugin 'godlygeek/tabular'
" Plugin 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }


Plugin 'vhdirk/vim-cmake'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'gabrielelana/vim-markdown'
Plugin 'https://github.com/tpope/vim-markdown'
" Plugin 'neovimhaskell/haskell-vim'
" Plugin 'urso/haskell_syntax.vim'
Plugin 'travitch/hasksyn'
Plugin 'rjayatilleka/vim-insert-char'
Plugin 'lark-parser/vim-lark-syntax'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'lervag/vimtex'
Plugin 'mattn/emmet-vim'
Plugin 'freitass/todo.txt-vim'
Plugin 'wincent/terminus'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'christoomey/vim-system-copy'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'felixhummel/setcolors.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'rakr/vim-one'
Plugin 'mhartington/oceanic-next'
" Plugin 'sheerun/vim-polyglot'
Plugin 'kjssad/quantum.vim'
Plugin 'tpope/vim-repeat'
Plugin 'kana/vim-textobj-line'

Plugin 'nightsense/carbonized'
Plugin 'nightsense/vimspectr'
Plugin 'nightsense/snow'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'dahu/VimGym'
" Plugin 'xolox/vim-colorscheme-switcher'
" Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'

Plugin 'preservim/nerdtree'
" All of your Plugins must be added before the following line

Plugin 'vim-python/python-syntax'

" Slime mock-up for Vim REPL
Plugin 'jpalardy/vim-slime'
Plugin 'christoomey/vim-tmux-runner'

call vundle#end()
filetype plugin indent on
" Put your non-Plugin stuff after this line

" Minimum Essentials : Practical Vim
    set nocompatible
    filetype plugin on

" Proper Tabbing : Practical Vim
    set shiftwidth=4
    set softtabstop=4
    set expandtab

" Tab completion in Command-Line Mode
    " Behaves like Bash
        set wildmode=longest,list
    " Behaves like zsh (great for playing with settings, eg. colorscheme)
	set wildmenu wildmode=full 

" Fix behavior when scrolling through CLM history
    cnoremap <C-p> <Up>
    cnoremap <C-n> <Down>

" Increase CLM history as memory is cheaper
    set history=200

" set line numbering
    set number

" traverse buffers (underloaded)
    nnoremap <silent> [b :bprevious<cr>
    nnoremap <silent> ]b :bnext<cr>
    nnoremap <silent> [b :bfirst<cr>
    nnoremap <silent> ]b :blast<cr>

nnoremap <c-@> i
inoremap <c-@> <esc>

" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" extend matching capabilities of `%`
runtime macros/matchit.vim

set autoindent
syntax on


autocmd bufwritepost * call system("ctags -r")

set autowrite

" Compiler
autocmd FileType python compiler pyunit
autocmd FileType python set makeprg=python\ %

autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#

" Also old
" Run
" nnoremap <C-K> :make

"Print
" autocmd FileType python nnoremap <C-P> ^Cprint(<C-r>")<Esc>
" autocmd FileType java nnoremap <C-P> $x^^CSystem.out.println(<C-r>");<Esc>
autocmd FileType java nnoremap <leader>p ysilfSystem.out.println<CR><Esc>
autocmd FileType python nnoremap <leader>p ysilfprint<CR><Esc>

inoremap kj 
inoremap jj 
inoremap <Home> 

" Made by me, old
" nnoremap <C-N> o<Esc>
" nnoremap <C-H> gg"*yG


" nnoremap <C-A> :call NextColor(1)<CR>
" nnoremap <C-B> :call NextColor(-1)<CR>
" nnoremap <C-C> :call NextColor(0)<CR>

" SetColors all

" TRUE COLOR
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
""(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"if (empty($TMUX))
"  if (has("nvim"))
"    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"  if (has("termguicolors"))
"    set termguicolors
"  endif
" endif

set termguicolors

" Status Line
set laststatus=2
set noshowmode

"let g:lightline = {
"      \ 'colorscheme': 'one',
"      \ }
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

" function SmoothScroll(up)
"     if a:up
"         let scrollaction="^Y"
"     else
"         let scrollaction="^E"
"     endif
"     exec "normal " . scrollaction
"     redraw
"     let counter=1
"     while counter<&scroll
"         let counter+=1
"         sleep 10m
"         redraw
"         exec "normal " . scrollaction
"     endwhile
" endfunction

" nnoremap <C-U> :call SmoothScroll(1)<Enter>
" nnoremap <C-D> :call SmoothScroll(0)<Enter>
" inoremap <C-U> <Esc>:call SmoothScroll(1)<Enter>i
" inoremap <C-D> <Esc>:call SmoothScroll(0)<Enter>i
" set mouse=a
"  map <ScrollWheelUp> <C-Y>
"  map <ScrollWheelDown> <C-E>


 " air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" set guifont=Menlo-Regular:h13,MesloLGSForPowerline-Regular:h13 
" set guifont=MesloLGSForPowerline-Regular:h13 
" >>> set guifont=MesloLGSForPowerline-Regular:h24


let g:python_highlight_all = 1

set termguicolors 

autocmd FileType python nnoremap <leader>1 :w<CR>echo system('python3 "' . expand('%') . '"')<CR>
autocmd FileType vim nnoremap <leader>2 :w<CR>:source %<CR>



" Bind F5 to save file if modified and execute python script in a buffer.
nnoremap <silent> <D-2> :call SaveAndExecutePython()<CR><C-W>k
vnoremap <silent> <D-2> :<C-u>call SaveAndExecutePython()<CR><C-W>k

let g:slime_target = "tmux"






"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)

" Colorscheme
set t_Co=256
syntax on
colorscheme onedark

let ayucolor='mirage'
colorscheme ayu


nnoremap <leader>3 :source ~/.vimrc<CR>:PluginInstall<CR>
nnoremap S :w<CR>
map <Space> <Leader>

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>


nnoremap <leader>k :VtrSendCommandToRunner !clear<cr>
nnoremap <leader>ipy :VtrOpenRunner {'orientation': 'h',  'percentage': 50, 'cmd': 'ipython'}<cr>
nnoremap <leader>vz :VtrFocusRunner<cr>
nnoremap <leader>vf :VtrSendFile<cr>
autocmd Filetype python map <leader>vp VtrSendCommandToRunner 'p3 %'<cr>
nnoremap <leader>d :VtrSendLinesToRunner<cr>
vnoremap <leader>d :VtrSendLinesToRunner<cr>



  nnoremap <leader>so :echo 'Reloaded .vimrc' \| update \| source ~/.vimrc<cr>
  nnoremap <leader>w :echo 'Saved' \| update<cr> 
  nnoremap <leader>q :echo 'Quit' \| wq!<cr>

  let g:VtrStripLeadingWhitespace = 0
  let g:VtrClearEmptyLines = 0
  let g:VtrAppendNewline = 0


  nnoremap <leader>f vip :VtrSendLinesToRunner<cr>

  nnoremap <cr> :
  set rtp+=/usr/local/opt/fzf


  nnoremap <leader>vi :tabedit $MYVIMRC<cr>
  nnoremap <leader>so :so $MYVIMRC<cr>
  nnoremap <leader>pl :so $MYVIMRC<cr>:PluginInstall<cr>:q<cr>

  let g:user_emmet_leader_key=','

  nnoremap j gj
  nnoremap k gk


  " set rnu
  
  " AUTOSAVES
  " autocmd InsertLeave * update
  " autocmd TextChanged <buffer> silent write


  " BEGIN: https://tpaschalis.github.io/macos-latex-vim/
  " Custom Silent command that will call redraw
  command! -nargs=+ Silent
  \   execute 'silent ! <args>'
  \ | redraw!

  map <leader>tt :Silent pdflatex % && open -a Preview && open -a iTerm<cr>
  " END: https://tpaschalis.github.io/macos-latex-vim/






  " LATEX:
  let g:vimtex_view_method = 'skim'



  set backspace=indent,eol,start

  let g:livepreview_previewer = 'skim'
  autocmd Filetype tex setl updatetime=1


  "Search"
  set hlsearch "Highlights search results"
  set ignorecase "Case-insensitive search"
  set smartcase "If a search contains an uppercase character, it is case-sensitive"
  set incsearch "Incremental search: search as you type"



  " Markdown Specific
  " autocmd Filetype markdown :Goyo <cr>
  " autocmd Filetype markdown set nonumber        " No linenumbers
  " autocmd Filetype markdown set linebreak       " Don't wrap lines mid-word
  " autocmd Filetype markdown set laststatus=1    " Remove statusbar at bottom
  """ autocmd Filetype markdown 
  """ autocmd Filetype markdown 
  """ autocmd Filetype markdown 


  " Insert single character without entering insert mode
  " Requires plugin 'rjayatilleka/vim-insert-char'
  " Added the `l` to append rather than insert
  let g:insert_char_no_default_mapping = 1
  nmap <leader>i l<Plug>InsertChar


  nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
  nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>


  " Persist undo history between Vim sessions.
  if has('persistent_undo')
          set undodir=$HOME/.vim/tmp/undo
          if !isdirectory(&undodir) | call mkdir(&undodir, 'p', 0700) | endif
  endif


  " let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
  " let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
  " let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
  " let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
  " let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
  " let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
  " let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
  let g:haskell_classic_highlighting = 1


  " " https://github.com/junegunn/goyo.vim/issues/36
  " function! s:auto_goyo()
  "   if &ft == 'markdown'
  "     Goyo 80
  "   else
  "     let bufnr = bufnr('%')
  "     Goyo!
  "     execute 'b '.bufnr
  "   endif
  " endfunction

  " augroup goyo_markdown
  "   autocmd!
  "   autocmd BufNewFile,BufRead * call s:auto_goyo()
  " augroup END


  nnoremap <leader>gy :Goyo<cr>



  " c/o https://github.com/junegunn/goyo.vim/wiki/Customization
  function! s:goyo_enter()
    let b:quitting = 0
    let b:quitting_bang = 0
    autocmd QuitPre <buffer> let b:quitting = 1
    cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
  endfunction

  function! s:goyo_leave()
    " Quit Vim if this is the only remaining buffer
    if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
      if b:quitting_bang
        qa!
      else
        qa
      endif
    endif
  endfunction

  " autocmd User GoyoEnter call <SID>goyo_enter()
  " autocmd User GoyoLeave call <SID>goyo_leave()


  set undofile " Maintain undo history between sessions
  set undodir=~/.vim/undodir

  let g:vtr_filetype_runner_overrides = {
      \ 'python': 'p3 {file}',
      \ }

  nmap <leader>f :VtrSendFile<cr>
  nmap <leader>va :VtrAttachToPane<cr>



  " " uncomment if vim-pathogen installed
  " " see https://github.com/tpope/vim-pathogen
  " execute pathogen#infect()

  " other plugin URLS:
  " https://github.com/tpope/vim-commentary
  " https://github.com/tpope/vim-fugitive
  " https://github.com/vhdirk/vim-cmake

  " if has('autocmd')
  "   filetype plugin indent on
  " endif
  " if has('syntax') && !exists('g:syntax_on')
  "   syntax enable
  " endif

  " set nocompatible

  " set nobackup
  " set tabstop=2
  " set shiftwidth=2
  " set expandtab
  " set autoindent
  " set backspace=indent,eol,start
  " set complete-=i
  " set smarttab

  " set nrformats-=octal

  " set autowrite            " Write the file if I navigate to a different buffer
  " set autoread             " Reload the file if it changes outside of vim
  " set autochdir            " Change directory to the current buffer when opening files.

  " " a workable colorscheme for buffy inside git bash
  " colorscheme slate

  " " Override the name of the base colorscheme with the name of this custom one
  " let g:colors_name = "wheat"
  " hi clear Comment
  " hi Comment ctermfg=187

  " command Hidecomments :hi Comment ctermfg=187 " wheat = 245, 222, 179
  " command Showcomments :hi Comment ctermfg=4

  " ease running cmake CTest from a src directory
  function! s:CTest(stepNum)
    execute '!cd ../build; test/step'. a:stepNum
  endfunction

  command! -nargs=1 Test call s:CTest(<f-args>)
  command Steps :!cd ../build; /bin/ls -1 test/step*

  " Change default comment string for Commentary plugin
  autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
  autocmd FileType cmake setlocal commentstring=\#\ %s

  " :let mapleader = " "

  " " show an indicator if over 80 columns wide
  " highlight ColorColumn ctermbg=magenta
  " call matchadd('ColorColumn', '\%81v', 100)

  " disable arrow keys: pedantic
  " noremap <Up>    <Nop>
  " noremap <Down>  <Nop>
  " noremap <Left>  <Nop>
  " noremap <Right> <Nop>

  " set laststatus=2
  " set ruler
  " set wildmenu

  " if !&scrolloff
  "   set scrolloff=1
  " endif
  " if !&sidescrolloff
  "   set sidescrolloff=5
  " endif
  " set display+=lastline

  " if &listchars ==# 'eol:$'
  "   set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  " endif

  " if v:version > 703 || v:version == 703 && has("patch541")
  "   " Delete comment character when joining commented lines
  "   set formatoptions+=j
  " endif

  " if has('path_extra')
  "   setglobal tags-=./tags tags-=./tags; tags^=./tags;
  " endif

  " if &history < 1000
  "   set history=1000
  " endif
  " if &tabpagemax < 50
  "   set tabpagemax=50
  " endif
  " if !empty(&viminfo)
  "   set viminfo^=!
  " endif
  " set sessionoptions-=options
  " set viewoptions-=options

  " " Allow color schemes to do bright colors without forcing bold.
  " if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  "   set t_Co=16
  " endif

  " " Load matchit.vim, but only if the user hasn't installed a newer version.
  " if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  "   runtime! macros/matchit.vim
  " endif


  " " resize split windows by a % of current size
  " nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
  " nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
  " nnoremap <silent> <Leader>. :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
  " nnoremap <silent> <Leader>, :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
  " " move between splits
  " nnoremap <Leader>h <C-w>h
  " nnoremap <Leader>j <C-w>j
  " nnoremap <Leader>k <C-w>k
  " nnoremap <Leader>l <C-w>l
  " nnoremap <Leader>= <C-w>=

  " " netrw preferences
  " let g:netrw_liststyle = 3          " tree style

  " let g:netrw_browse_split = 4       " Open selected file in previous window
  " let g:netrw_preview = 1            " split vertically
  " let g:netrw_altv = 1               " file with :vsplit to the right of the browser.

  " " prefer vertical orientation when using :diffsplit
  " set diffopt+=vertical
  " " started In Diff-Mode set diffexpr (plugin not loaded yet)
  " if &diff
  "   let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
  " endif

  " clang-format integration
  " map <C-K>f :pyf /var2/lopt/llvm/tools/clang/tools/clang-format/clang-format.py<cr>
  " imap <C-K>f :pyf /var2/lopt/llvm/tools/clang/tools/clang-format/clang-format.py<cr>

" vim:set ft=vim et sw=2:


function L1(command)
    silent w|echo(system(a:command."|l1"))
endfunction

command! -nargs=1 L1 call L1(<f-args>)
