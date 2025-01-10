" fast-markdown.vim

function! markdown_edit#CreateTable(num_cols)
  let col_str = repeat('|<++>', a:num_cols) . '|'
  let separator = repeat('|:----:', a:num_cols) . '|'
  let result = col_str . "\n" . separator . "\n" . col_str
  return result
endfunction

function! markdown_edit#CreateMarkdownRow(num_cols)
  let col_str = repeat('|<++>', a:num_cols) . '|'
  return col_str
endfunction
