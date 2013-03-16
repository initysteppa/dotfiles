" vimlatex macros
call IMAP('DDpart', '\frac{\partial <++>}{\partial <++>}<++>', 'tex')
call IMAP('FRFIG', "\<C-r>=FloatRowFig(2)\<CR>", 'tex')

function! FloatRowFig(cols)
	let cols = a:cols
	let ffigbox =
		\ "\\ffigbox{\<CR>" .
		\ "\\caption{<+caption text+>}\<CR>" .
		\ "\\label{fig:<+label+>}\<CR>" .
		\ "}\<CR>" .
		\ "{\\includegraphics[width=".string(1.0/cols)."\\textwidth]{<+file+>}}\<CR>"

	let ffigboxes = ''
	for i in range(1,cols)
		let ffigboxes = ffigboxes . ffigbox
	endfor

	return IMAP_PutTextWithMovement(
		\ "\\begin{figure}[<+Hhtpb+>]\<CR>" .
		\ "\\begin{floatrow}\<CR>" .
		\ "\\centering\<CR>" .
		\ ffigboxes .
		\ "\\end{floatrow}\<CR>" .
		\ "\\end{figure}<++>"
		\ )
endfunction

" conceal
set cole=2
let g:tex_conceal= 'adgm'
hi Conceal      gui=BOLD        guibg=#1e1e27   guifg=#c080d0
