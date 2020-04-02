set pastetoggle=<F3>
set number

" git gutter : 
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
highlight! link SignColumn LineNr
set signcolumn=yes
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)


call plug#begin()
Plug 'ghifarit53/tokyonight-vim'	
Plug 'sheerun/vim-polyglot'
call plug#end()

