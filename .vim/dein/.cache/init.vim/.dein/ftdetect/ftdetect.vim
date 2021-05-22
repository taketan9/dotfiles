if !has('patch-7.4.480')
    " Before this patch, vim used modula2 for .md.
    au! filetypedetect BufRead,BufNewFile *.md
endif

" markdown filetype file
au BufRead,BufNewFile *.{md,mdx,mdown,mkd,mkdn,markdown,mdwn} setfiletype markdown
au BufRead,BufNewFile *.{md,mdx,mdown,mkd,mkdn,markdown,mdwn}.{des3,des,bf,bfa,aes,idea,cast,rc2,rc4,rc5,desx} setfiletype markdown
autocmd BufReadPost *.fugitiveblame setfiletype fugitiveblame
" Go dep and Rust use several TOML config files that are not named with .toml.
autocmd BufNewFile,BufRead *.toml,Gopkg.lock,Cargo.lock,*/.cargo/config,*/.cargo/credentials,Pipfile setf toml
" Detect syntax file.
autocmd BufNewFile,BufRead *.snip,*.snippets set filetype=neosnippet
