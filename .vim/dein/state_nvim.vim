if g:dein#_cache_version !=# 220 || g:dein#_init_runtimepath !=# '/home/dateshima/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/dateshima/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/dateshima/.local/share/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/dateshima/.config/nvim/after,/home/dateshima/.vim/,/home/dateshima/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/dateshima/.config/nvim/init.vim', '/home/dateshima/.vim/autoload/dein/dein.toml', '/home/dateshima/.vim/autoload/dein/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/dateshima/.vim/dein'
let g:dein#_runtime_path = '/home/dateshima/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/dateshima/.vim/dein/.cache/init.vim'
let &runtimepath = '/home/dateshima/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/dateshima/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/dateshima/.vim/dein/repos/github.com/junegunn/fzf,/home/dateshima/.vim/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/dateshima/.vim/dein/.cache/init.vim/.dein/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/dateshima/.local/share/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/dateshima/.config/nvim/after,/home/dateshima/.vim/,/home/dateshima/.vim/dein/repos/github.com/Shougo/dein.vim'
filetype off
  noremap <Space><Space> <Esc>:call buffer_selector#OpenBufferSelector()<Enter>
  let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.php,*.vue'
  set laststatus=2
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline#extensions#whitespace#mixed_indent_algo = 1
  let g:airline_theme = 'dark'
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
  augroup vimfiler
    autocmd!
    autocmd FileType vimfiler call s:vimfiler_settings()
  augroup END
  function! s:vimfiler_settings()
    nnoremap <silent><buffer><expr> s vimfiler#do_switch_action('split')
    nnoremap <silent><buffer><expr> v vimfiler#do_switch_action('vsplit')
  endfunction
  let g:vimfiler_as_default_explorer=1
  let g:vimfiler_safe_mode_by_default = 0
  let g:vimfiler_tree_leaf_icon = " "
  let g:vimfiler_tree_opened_icon = ' '
  let g:vimfiler_tree_closed_icon = ' '
  let g:vimfiler_file_icon = '- '
  let g:vimfiler_marked_file_icon = '✓ '
  let g:vimfiler_readonly_file_icon = '✗ '
  let g:vimfiler_ignore_pattern = '^\%(.git\|.DS_Store\)$'
  nnoremap fi :VimFilerBufferDir<CR>
  nnoremap fe :VimFilerExplorer  -split -winwidth=35 -toggle -no-quit<CR>
  nmap ww gcc
  vmap ww gcc
  if !exists('g:tcomment_types')
      let g:tcomment_types = {}
  endif
  let g:tcomment_types['eruby'] = '<%# %s %>'
  let g:tcomment_types['erb'] = '<%# %s %>'
  let g:tcomment_types['scss'] = '/* %s */'
  let g:tcomment_types['pug'] = '// %s'
  let g:tcomment_types['toml'] = '# %s'
  let g:airline#extensions#branch#enabled = 1
  nnoremap [fugitive]  <Nop>
  nmap <space>g [fugitive]
  nnoremap <silent> [fugitive]s :Gstatus<CR><C-w>T
  nnoremap <silent> [fugitive]a :Gwrite<CR>
  nnoremap <silent> [fugitive]c :Gcommit-v<CR>
  nnoremap <silent> [fugitive]b :Gblame<CR>
  nnoremap <silent> [fugitive]p :Gpull<CR>
  nnoremap <silent> [fugitive]d :Gdiff<CR>
  nnoremap <silent> [fugitive]m :Gmerge<CR>
  let g:indent_guides_enable_on_vim_startup=1
  let g:indent_guides_auto_colors = 0
  let g:indent_guides_exclude_filetypes = ['help', 'vimfiler']
  let g:deoplete#enable_at_startup = 1
  set completeopt+=noinsert
  map p <Plug>(miniyank-autoput)
  map P <Plug>(miniyank-autoPut)
  command! -bang -nargs=* Rg call fzf#vim#grep(   'rg --line-number --no-heading '.shellescape(<q-args>), 0,   fzf#vim#with_preview({'options': '--exact --reverse'}, 'right:50%:wrap'))
  let g:highlightedyank_highlight_duration = 200
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['java'] = '☕'
