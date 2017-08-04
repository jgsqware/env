"General
set history=1000
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest
set title
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set autowrite
let mapleader = ","
set ruler
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
set shortmess=atI
set novisualbell
set mouse=a
set backspace=indent,eol,start
set number
highlight LineNr ctermfg=DarkGrey
syntax enable
filetype plugin on
set tabstop=4
set shiftwidth=4
set updatetime=100
nnoremap <leader>o :exe ':silent !opera %'<CR>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Go command
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>q :cclose<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>"

let g:go_def_reuse_buffer = 1
autocmd FileType go nmap <leader>s  <Plug>(go-def-vertical)
autocmd FileType go nmap <leader>f :GoInfo<CR>
autocmd FileType go nmap <leader>g :GoDeclsDir<CR>
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

"NerdTree
nnoremap <leader>o :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"ultisnips
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function! ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" codedark theme
colorscheme codedark
let g:rehash256 = 1

"Plugins
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries'}
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'scrooloose/syntastic'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'yuttie/comfortable-motion.vim'
Plug 'mileszs/ack.vim'
Plug 'ErichDonGubler/nerdtree-plugin-open-in-file-browser' | Plug 'ErichDonGubler/vim-file-browser-integration'
call plug#end()
