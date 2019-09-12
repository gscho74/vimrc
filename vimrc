"새로운 라인을 시작할 때, smart 하게 auto indentation 을 수행한다
set smartindent

"tab을 눌렀을때 인식하는 칸 수
set tabstop=4

"tab 을 space 로 확장하라는 설정
set expandtab
set et

">>, << 키로 들여/내어 쓰기할 때, 스페이스 개수
set shiftwidth=4

"CtrlP setting
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux


"automatic language sanity check : syntastic
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" treat .sv .vh .svh as verilog
autocmd BufNewFile,BufRead *.sv set filetype=verilog
autocmd BufNewFile,BufRead *.vh set filetype=verilog
autocmd BufNewFile,BufRead *.svh set filetype=verilog

"" --- highlight *.sv Same *.v ---
"autocmd QuickFixCmdPost *grep* cwindow

"let g:syntastic_verilog_compiler_options = '-Wall'
"let b:syntastic_verilog_cflags = ' -I/usr/include/libsoup-2.4'
"let g:syntastic_verilog_include_dirs = [ 'includes', 'headers' ]

let g:syntastic_verilog_config_file = '.lint'
let g:syntastic_verilog_checkers = ['verilator','iverilog']
"let g:syntastic_verilog_checkers = ['iverilog']
