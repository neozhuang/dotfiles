" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [
            \ #{
            \   name: 'clangd',
            \   filetype: ['c', 'cpp', 'objc', 'objcpp'],
            \   path: 'clangd',
            \   args: ['--background-index', '--clang-tidy', '--cross-file-rename']
            \ }
            \ ]
autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
augroup MyLspKeymaps
    autocmd!
    autocmd User LspSetup call s:lsp_keymaps()
augroup END

function! s:lsp_keymaps() abort
    nnoremap <buffer> <silent> gd :LspGotoDefinition<CR>
    nnoremap <buffer> <silent> gD :LspGotoDeclaration<CR>
    nnoremap <buffer> <silent> gr :LspShowReferences<CR>
    nnoremap <buffer> <silent> gi :LspGotoImpl<CR>
    nnoremap <buffer> <silent> K  :LspHover<CR>

    nnoremap <buffer> <silent> <leader>rn :LspRename<CR>
    nnoremap <buffer> <silent> <leader>ca :LspCodeAction<CR>

    nnoremap <buffer> <silent> gl :LspDiag current<CR>
    nnoremap <buffer> <silent> ]d :LspDiag next \| LspDiag current<CR>
    nnoremap <buffer> <silent> [d :LspDiag prev \| LspDiag current<CR>
endfunction
" Omni completion trigger
" inoremap <silent> <C-Space> <C-x><C-o>

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
            \   diagSignErrorText: '✘',
            \   diagSignWarningText: '▲',
            \   diagSignInfoText: '»',
            \   diagSignHintText: '⚑',
            \ })

