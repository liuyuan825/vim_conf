" Global settings
left g:startDir = '.'
" set tap to 4 spaces
set tabstop=4
" set shiftwidth to 4 spaces
set shiftwidth=4
set expandtab
set autochdir
set encoding=UTF-8
set cursorline

set nu

" Key (re)Mappings {
    " set <leader> to comma
    let mapleader = ","

    " Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
    imap kj <Esc>
    nnoremap ; :

    " Map F1 to Esc to prevent accidental opening of the help window
    map  <F1> <Esc>
    imap <F1> <Esc>

    " Easier moving in tabs and windows
    map <C-J> <C-W>j<C-W>_
    map <C-K> <C-W>k<C-W>_
    map <C-L> <C-W>l<C-W>_
    map <C-H> <C-W>h<C-W>_

    " Wrapped lines goes down/up to next row, rather than next line in file.
    nnoremap j gj
    nnoremap k gk

    " Yank from the cursor to the end of the line, to be consistent with C and D.
    nnoremap Y y$

    " Code folding options
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

    " Clearing highlighted search
    nmap <silent> <leader>/ :nohlsearch<CR>

    " One less key-stroke for save
    nmap <silent> <leader>w :w<CR>

    " Easier copy/paste
    map <leader>v "+gP
    map <leader>c "+y

    " Ctrl-a for select all
    map <C-A> ggVG

    " Ctrl-b for fuzzy-buffer match
    map <C-B> :FufBuffer<CR>

    " For when you forget to sudo.. Really Write the file.
    cmap w!! w !sudo tee % >/dev/null
    "nmap <silent> <leader>www :w!!<CR> " this causes a nasty delay before saving

    " Toggle numbers.vim
    nnoremap <F3> :NumbersToggle<CR>

    " ZenCoding-vim
    "    map <C-z> <C-y>,

    " pdv-standalone
    nnoremap <C-\>p :call PhpDocSingle()<CR>
    vnoremap <C-\>p :call PhpDocRange()<CR>

    " Find files using Telescope command-line sugar.
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>

    " HopWord alias
    nnoremap <leader>hw <cmd>HopWord<cr>
" }




" { Plugins with packer
    lua require('plugins')
    colorscheme carbonfox
    lua require('user.ui.feline')
    lua require('user.ui.tabby')
    lua require('clipboard_image_conf')
    lua require('hop').setup()
    lua require('leap').add_default_mappings()
    lua require('nvim-autopairs').setup()
    lua require('mini.cursorword').setup() 
    " nvim-tree configs
    lua require("nvim-tree").setup()
    nnoremap <leader>e <cmd>NvimTreeToggle<cr>

    " CoC-pyright is good enough
    " lua require'lspconfig'.pyright.setup{}
" }
