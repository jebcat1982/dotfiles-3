" Load template associated with file extension on file creation if template is available
" http://vim.runpaint.org/typing/using-templates
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e | silent! 0r ~/.vim/skel/%:t

" Spell check for commit messages
autocmd BufNewFile,BufRead COMMIT_EDITMSG setl spell
autocmd BufNewFile,BufRead svn-commit.tmp setl spell

" Spell check for tex
autocmd BufNewFile,BufRead *.tex setl spell

" [Ctrl]+[x] [Ctrl]+[e] opens the current command in editor
autocmd BufNewFile,BufRead /tmp/bash-* setl syntax=sh

" Remove any trailing whitespace that is in the file
"autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Automatically reload if file mode was changed
"autocmd FileChangedShell * if v:fcs_reason == "mode" | let v:fcs_choice = "reload" | endif

" Automatically give executable permissions if file begins with #! and contains '/bin/' in the path
"autocmd BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | if !executable(expand("<afile>")) | silent !chmod a+x <afile> | endif | endif | endif

autocmd BufNewFile,BufRead *.json setl syntax=javascript

" gradle syntax highlighting
autocmd BufNewFile,BufRead *.gradle setf groovy
