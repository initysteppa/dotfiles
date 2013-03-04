" vimlatex macros
call IMAP('DDpart', '\frac{\partial <++>}{\partial <++>}<++>', 'tex')

" conceal
set cole=2
let g:tex_conceal= 'adgm'
hi Conceal      gui=BOLD        guibg=#1e1e27   guifg=#c080d0
