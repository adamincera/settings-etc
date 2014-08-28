" enable mouse scrolling
if has("mouse")
    set mouse=a
endif

" jj => esc
:imap jj <Esc>

"remap navigation keys

:nnoremap ; l
:nnoremap l k
:nnoremap k j
:nnoremap j h

:nnoremap d; dl
:nnoremap dl dk
:nnoremap dk dj 
:nnoremap dj dh

:nnoremap y; yl 
:nnoremap yl yk
:nnoremap yk yj
:nnoremap yj yh

" highlight search

set hlsearch

"Jae's Vim settings
"

" Line numbers
set number

" Syntax
syntax on
execute pathogen#infect()
filetype plugin indent on

"left-to-right wrapping
set whichwrap+=<,>,h,l,[,]

" Buffer switching using Cmd-arrows in Mac and Alt-arrows in Linux
:nnoremap <D-Right> :bnext<CR>
:nnoremap <M-Right> :bnext<CR>
:nnoremap <D-Left> :bprevious<CR>
:nnoremap <M-Left> :bprevious<CR>
" and don't let MacVim remap them
if has("gui_macvim")
   let macvim_skip_cmd_opt_movement = 1
endif

" When coding, auto-indent by 4 spaces, just like in K&R
" Note that this does NOT change tab into 4 spaces
" You can do that with "set tabstop=4", which is a BAD idea
set shiftwidth=4

" Always replace tab with 8 spaces, except for makefiles
set expandtab
autocmd FileType make setlocal noexpandtab

" My settings when editing *.txt files
"   - automatically indent lines according to previous lines
"   - replace tab with 8 spaces
"   - when I hit tab key, move 2 spaces instead of 8
"   - wrap text if I go longer than 76 columns
"   - check spelling
autocmd FileType text setlocal autoindent expandtab softtabstop=2 textwidth=76 spell spelllang=en_us

" Don't do spell-checking on Vim help files
autocmd FileType help setlocal nospell

" Prepend ~/.backup to backupdir so that Vim will look for that directory
" before littering the current dir with backups.
" You need to do "mkdir ~/.backup" for this to work.
set backupdir^=~/.backup

" Also use ~/.backup for swap files. The trailing // tells Vim to incorporate
" full path into swap file names.
set dir^=~/.backup//

" Ignore case when searching
" - override this setting by tacking on \c or \C to your search term to make
"   your search always case-insensitive or case-sensitive, respectively.
set ignorecase

"
" End of Jae's Vim settings
