color ron

set nu
set rnu

set tabstop=4
set shiftwidth=4
set expandtab

set smartindent
set incsearch 

set scrolloff=8
set signcolumn=yes

set isfname+=@-@

set updatetime=50

set colorcolumn=80

set termguicolors

set hidden

set guifont=Lucida_Console:h25

set cursorline


call plug#begin('~/vimplugins')
" If you require a lsp server uncomment the following two lines
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gi <plug>(lsp-definition)
    nmap <buffer> gd <plug>(lsp-declaration)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gl <plug>(lsp-document-diagnostics)
    nmap <buffer> <f2> <plug>(lsp-rename)
    nmap <buffer> <f3> <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

set is

" Uncomment if needed
" set gp=git\ grep\ -n

if executable('rg')
	set grepprg=rg\ --vimgrep\ --hidden\ --smart-case\ --no-heading\ --glob=!.git/*
endif
set ruler

" mappings
let mapleader = " "

" Explorer
nnoremap <leader>pv :Ex<CR>

" Search
nnoremap <Leader>g :silent lgrep<Space>
nnoremap <silent> [f :lprevious<CR>
nnoremap <silent> ]f :lnext<CR>


" Moving blocks
xnoremap J :m '>+1\<CR>gv=gv
xnoremap K :m '<-2\<CR>gv=gv

" Merge lines without moving the cursor
nnoremap J mzJ`z

nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz

nmap n nzzzv
nmap N Nzzzv

xmap <leader>p "_dP
nmap <leader>d "_d

" FZF
nnoremap <C-p> :Files<CR>

" Only if using INTELLIJ

"Plug 'preservim/nerdtree'


"nnoremap <C-t> :NERDTreeToggle<CR>

