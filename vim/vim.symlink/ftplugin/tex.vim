" vimlatex macros
let g:Tex_Com_pd = "\\pd{<++>}{<++>}<++>"
let g:Tex_Com_od = "\\od{<++>}{<++>}<++>"
let g:Tex_Com_md = "\\md{<+f+>}{<+o+>}{<+x+>}{<+n+>}{<+y+>}{<+m+>}<++>"
let g:Tex_Com_eval = "\\eval{<+f+>}_{<+at+>}<++>"
let g:Tex_Com_fullfunction = "\\fullfunction{<+f+>}{<+fromR+>}{<+toR+>}{<+arg+>}{<+val+>}<++>"

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

call IMAP('DISC2DER', "\<C-r>=Discr2ndDer()\<CR>", 'tex')
function! Discr2ndDer()
	return IMAP_PutTextWithMovement(
		\ "\\begin{equation}\<CR>" .
		\ "\\footnotesize\<CR>" .
		\ "\\begin{pmatrix}\<CR>" .
		\ "-2 & 1 & 0 & \\cdots & \\cdots & 0 \\\\\<CR>" .
		\ "-1 & -2 & 1 & \\ddots & & \\vdots \\\\\<CR>" .
		\ "0 & \\ddots & \\ddots & \\ddots & \\ddots & \\vdots \\\\\<CR>" .
		\ "\\vdots & \\ddots & \\ddots & \\ddots & \\ddots & 0 \\\\\<CR>" .
		\ "\\vdots & & \\ddots & 1 & -2 & 1  \\\\\<CR>" .
		\ "0 & \\cdots & \\cdots & 0 & 1 & -2\<CR>" .
		\ "\\end{pmatrix}\<CR>" .
		\ "\\label{<++>}\<CR>" .
		\ "\\end{equation}<++>"
		\ )
endfunction

" conceal
set cole=2
let g:tex_conceal= 'adgm'
hi Conceal      gui=BOLD        guibg=#1e1e27   guifg=#c080d0
