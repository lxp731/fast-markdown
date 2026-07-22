"===
"===MarkdownEdit
"===
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,5 #####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,6 ######<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a

function! CreateTable(num_cols)
  let col_str = repeat('|<++>', a:num_cols) . '|'
  let separator = repeat('|:----:', a:num_cols) . '|'
  let result = col_str . "\n" . separator . "\n" . col_str
  return result
endfunction

autocmd Filetype markdown inoremap ,t2 <Esc>i<C-R>=CreateTable(2)<CR><Esc>^3klc5l
autocmd Filetype markdown inoremap ,t3 <Esc>i<C-R>=CreateTable(3)<CR><Esc>^3klc5l
autocmd Filetype markdown inoremap ,t4 <Esc>i<C-R>=CreateTable(4)<CR><Esc>^3klc5l
autocmd Filetype markdown inoremap ,t5 <Esc>i<C-R>=CreateTable(5)<CR><Esc>^3klc5l
autocmd Filetype markdown inoremap ,t6 <Esc>i<C-R>=CreateTable(6)<CR><Esc>^3klc5l

" autocmd Filetype markdown inoremap ,t3 \|<++>\|<++>\|<++>\|<Enter>\|:----:\|:----:\|:----:\|<Enter>\|<++>\|<++>\|<++>\|<Enter><Esc>3klc4l
" autocmd Filetype markdown inoremap ,t2 \|<++>\|<++>\|<Enter>\|:----:\|:----:\|<Enter>\|<++>\|<++>\|<Enter><Esc>3klc4l

function! CreateMarkdownRow(num_cols)
  let col_str = repeat('|<++>', a:num_cols) . '|'
  return col_str
endfunction

autocmd Filetype markdown inoremap ,l2 <Esc>o<C-R>=CreateMarkdownRow(2)<CR><Esc>^lc5l
autocmd Filetype markdown inoremap ,l3 <Esc>o<C-R>=CreateMarkdownRow(3)<CR><Esc>^lc5l
autocmd Filetype markdown inoremap ,l4 <Esc>o<C-R>=CreateMarkdownRow(4)<CR><Esc>^lc5l
autocmd Filetype markdown inoremap ,l5 <Esc>o<C-R>=CreateMarkdownRow(5)<CR><Esc>^lc5l
autocmd Filetype markdown inoremap ,l6 <Esc>o<C-R>=CreateMarkdownRow(6)<CR><Esc>^lc5l

" autocmd Filetype markdown inoremap ,l2 \|<++>\|<++>\|
" autocmd Filetype markdown inoremap ,l3 \|<++>\|<++>\|<++>\|

autocmd Filetype markdown inoremap <C-s> <C-o>:w<CR>
