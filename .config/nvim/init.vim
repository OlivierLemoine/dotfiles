call plug#begin('~/.vim/plugged')
" Theme
Plug 'mhartington/oceanic-next'
" Layout
Plug 'mhinz/vim-startify'
" Code
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'neoclide/coc-pairs'
Plug 'neoclide/coc-prettier'
Plug 'neoclide/coc-json'
Plug 'neoclide/coc-rls'
Plug 'coc-extensions/coc-powershell'
Plug 'clangd/coc-clangd'
Plug 'tpope/vim-fugitive'
" better statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set hidden
set number relativenumber    " show line number
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
set nobackup
set noswapfile
set encoding=UTF-8
set clipboard=unnamed
set tabstop=4                " number of visual spaces per TAB
set softtabstop=4            " number of spaces in tab when editing
set shiftwidth=4             " number of spaces to use for autoindent
set expandtab                " tabs are space
set autoindent
set copyindent               " copy indent from the previous line
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set splitright
set splitbelow
set mouse=a

nnoremap <Up> <Nop>
inoremap <Up> <Nop>
vnoremap <Up> <Nop>

nnoremap <Left> <Nop>
inoremap <Left> <Nop>
vnoremap <Left> <Nop>

nnoremap <Right> <Nop>
inoremap <Right> <Nop>
vnoremap <Right> <Nop>

nnoremap <Down> <Nop>
inoremap <Down> <Nop>
vnoremap <Down> <Nop>

inoremap jj <Esc>

let mapleader = ","
     
nnoremap <silent> <S-j> :bp<CR>
nnoremap <silent> <S-k> :bn<CR>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-=> <C-w>4+
nnoremap <C--> <C-w>4-
nnoremap <C-.> <C-w>8>
nnoremap <C-,> <C-w>8<
nnoremap <C-n> <C-w>=
nnoremap <C-m> <C-w>_
nnoremap <C-o> <C-w>o

tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-=> <C-\><C-n><C-w>4+
tnoremap <C--> <C-\><C-n><C-w>4-
tnoremap <C-.> <C-\><C-n><C-w>8>
tnoremap <C-,> <C-\><C-n><C-w>8<
tnoremap <C-n> <C-\><C-n><C-w>=
tnoremap <C-m> <C-\><C-n><C-w>_
tnoremap <C-o> <C-\><C-n><C-w>o

tnoremap <Esc> <C-\><C-n>

nnoremap <silent> <C-w> :bd<CR>

let g:netrw_banner = 0

function OpenFiles()
    if &ft ==# 'netrw'
        execute ':q'
    else
        Sexplore
        resize 10
    endif
endfunction

nnoremap <silent> ; :call OpenFiles()<CR>

function OpenTerminal()
    if exists('t:auto_opened_terminal') && bufexists(t:auto_opened_terminal)
        if &buftype ==# 'terminal'
            execute ':bd!'
        else
            split 
            resize 10
            execute 'buffer ' t:auto_opened_terminal
        end
    else
        split 
        resize 10
        terminal
        let t:auto_opened_terminal = bufnr("%")
    end
endfunction
nnoremap <silent> <C-`> :call OpenTerminal()<CR>
tnoremap <silent> <C-`> <C-\><C-n>:call OpenTerminal()<CR>

nnoremap <silent> <C-b> :buffers<CR>

" Neovide
let g:neovide_transparency=0.8
let g:neovide_cursor_trail_length=0.8

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Theme
syntax enable
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" Cog
let g:coc_global_extensions = []

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> m :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
