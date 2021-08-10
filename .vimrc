"--------------------------------------------------------------
"          Plugin                                           <<<
"--------------------------------------------------------------
" 全てのプラグインをロードする
packloadall
" 全てのペルプをロードする
silent! helptags ALL

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" ウィンドウサイズの変更
Plugin 'simeji/winresizer'

" ステータスバーをかっこ良くしてくれる
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'tomasiser/vim-code-dark'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  set laststatus=2
  let g:airline_theme = 'codedark'

" ファイルに色をつけうる
Plugin 'lambdalisue/glyph-palette.vim'''
  augroup my-glyph-palette
    autocmd! *
      autocmd FileType fern call glyph_palette#apply()
        autocmd FileType nerdtree,startify call glyph_palette#apply()
      augroup END))

" 閉じタグを自動で補完
Plugin 'alvan/vim-closetag'
  let g:closetag_filenames='*.html, *.erb, *.php'
  let g:closetag_xhtml_filenames='*.jsx,*.tsx,*.vue'
  let g:closetag_filetypes='html, erb, php'
  let g:closetag_xhtml_filetypes='jsx,tsx,javascript.jsx,typescript.tsx,vue'
  let g:closetag_emptyTags_caseSensitive=1
  let g:closetag_shortcut='>'
  let g:closetag_close_shortcut = '<leader>>'

"Git の差分を行番号の横に表示
Plugin 'airblade/vim-gitgutter'
	set signcolumn=yes
	let g:gitgutter_async = 1
	let g:gitgutter_sign_modified = 'rw'
  nnoremap gh :GitGutterLineHighlightsToggle<CR>>
	highlight GitGutterAdd ctermfg=green
	highlight GitGutterChange ctermfg=yellow
	highlight GitGutterDelete ctermfg=red
	highlight GitGutterChangeDelete ctermfg=yellow

" 様々な言語のシンタックスやインデントを提供する
Plugin 'sheerun/vim-polyglot'

" タブで補完をしてくれる
Plugin 'ervandew/supertab'

" cssシンタックス
Plugin 'hail2u/vim-css3-syntax'

" Vim上で色のプレビューを確認できる
Plugin 'gorodinskiy/vim-coloresque'

" hamlのシンタックス
Plugin 'tpope/vim-haml'

" VimでEmmetを使うようにする
Plugin 'mattn/emmet-vim'

" 新規にファイルを作成する場合に使用するテンプレート機能
Plugin 'mattn/sonictemplate-vim'
  let g:sonictemplate_vim_template_dir = ['~/.vim/template']

" JavaScriptのシンタックス
Plugin 'jelera/vim-javascript-syntax'

" Vue向けのシンタックスハイライト
Plugin 'posva/vim-vue'

" vue のプラグイン
Plugin 'leafOfTree/vim-vue-plugin'

" PHPのuse文を自動生成してくれる
Plugin 'arnaud-lb/vim-php-namespace'

" ファイル保存時にctagsを更新してくれる
Plugin 'craigemery/vim-autotag'

" " " PHPの補完プラグイン
" Plugin 'phpactor/phpactor'
" " useの補完
" nmap <silent><Leader>u      :<C-u>call phpactor#UseAdd()<CR>
"
" " コンテキストメニューの起動(カーソル下のクラスやメンバに対して実行可能な選択肢を表示してくれます)
" nmap <silent><Leader>mm     :<C-u>call phpactor#ContextMenu()<CR>
"
" " ナビゲーションメニューの起動(クラスの参照元を列挙したり、他ファイルへのジャンプなど)
" nmap <silent><Leader>nn     :<C-u>call phpactor#Navigate()<CR>
"
" " カーソル下のクラスやメンバの定義元にジャンプ
" nmap <silent><Leader>o      :<C-u>call phpactor#GotoDefinition()<CR>
"
" " 編集中のクラスに対し各種の変更を加える(コンストラクタ補完、インタフェース実装など)
" nmap <silent><Leader>tt     :<C-u>call phpactor#Transform()<CR>
"
" " 新しいクラスを生成する(編集中のファイルに)
" nmap <silent><Leader>cc     :<C-u>call phpactor#ClassNew()<CR>
"
" " 選択した範囲を変数に抽出する
" nmap <silent><Leader>ee     :<C-u>call phpactor#ExtractExpression(v:false)<CR>
"
" " 選択した範囲を変数に抽出する
" vmap <silent><Leader>ee     :<C-u>call phpactor#ExtractExpression(v:true)<CR>
"
" " 選択した範囲を新たなメソッドとして抽出する
" vmap <silent><Leader>em     :<C-u>call phpactor#ExtractMethod()<CR>
"
" " split → jump
" nmap <silent><C-w><Leader>o :<C-u>call DefinitionJumpWithPhpactor()<CR>
"
" " カーソル下のクラスや変数の情報を表示する
" " 他のエディタで、マウスカーソルをおいたときに表示されるポップアップなどに相当
" vmap <silent><Leader>hh     :<C-u>call phpactor#Hover()<CR>
"
" " オムニ補完でPhpactorを利用
" autocmd FileType php setlocal omnifunc=phpactor#Complete

" Laravel Blade Snippets
Plugin 'yaegassy/coc-blade-formatter', {'do': 'yarn install --frozen-lockfile'}

" " Ruby end を自動で入力
" Plugin 'tpope/vim-endwise'
"
" " railsコマンドの実行やRailsに特化したファイル操作を提供
" Plugin 'tpope/vim-rails'
"
" " Vim上でRSpecを実行する
" Plugin 'thoughtbot/vim-rspec'
"   " 現在開いている spec ファイル全体を実行
"   map <Leader>r :call RunCurrentSpecFile()<CR>
"   " 現在開いている spec ファイルのカーソルに一番近いブロックの spec を実行
"   map <Leader>s :call RunNearestSpec()<CR>
"   " 前回実行した spec を実行
"   map <Leader>l :call RunLastSpec()<CR>
"   " プロジェクトのすべての spec を実行
"   map <Leader>a :call RunAllSpecs()<CR>
"   " 実行するコマンドを設定
"   let g:rspec_command = "!usr/bin/env"

" ターミナル機能のラッパー
Plugin 'kassio/neoterm'

" directory tree
Plugin 'preservim/nerdtree'
  nnoremap <silent><C-a> :NERDTreeFind<CR>:vertical res 40<CR>
  nnoremap <silent><C-a> :NERDTreeToggle<CR>:vertical res 40<CR>
  let g:NERDTreeChDirMode=2
  let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
  let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
  let g:NERDTreeShowBookmarks=1
  let g:nerdtree_tabs_focus_on_files=1
  let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
  let g:NERDTreeWinSize = 30
  let NERDTreeShowHidden=1
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
  nnoremap <Leader>dir :NERDTreeTabsToggle<CR>
  autocmd BufWritePre * :FixWhitespace
  augroup NERD
      au!
      autocmd VimEnter * NERDTree
      autocmd VimEnter * wincmd p
  augroup END

" NERDTree の Git プラグイン
Plugin 'Xuyuanp/nerdtree-git-plugin'

" アイコンを表示
Plugin 'ryanoasis/vim-devicons'
  set encoding=UTF-8
  nmap sf :VimFilerBufferDir<Return>
  nmap sF :VimFilerExplorer -find<Return>
  nmap sb :Unite buffer<Return>
  let g:vimfiler_as_default_explorer = 1
  let g:vimfiler_safe_mode_by_default = 0
  let g:vimfiler_enable_auto_cd = 0
  let g:vimfiler_tree_leaf_icon = ''
  let g:vimfiler_tree_opened_icon = '▾'
  let g:vimfiler_tree_closed_icon = '▸'
  let g:vimfiler_marked_file_icon = '✓'

" 括弧のレインボーハイライト
Plugin 'luochen1990/rainbow'
  let g:rainbow_active = 1

" スニペットプラグイン
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
  let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
  let g:UltiSnipsExpandTrigger="<Down>"
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
  let g:UltiSnipsEditSplit="vertical"

" 簡単にカーソル移動
Plugin 'easymotion/vim-easymotion'
  nmap <Leader> <Plug>(easymotion-prefix)
  let g:EasyMotion_do_mapping = 0
  nmap <Leader>w <Plug>(easymotion-jumptoanywhere)
  nmap <Leader>jk <Plug>(easymotion-sol-bd-jk)
  nmap <Leader>s <Plug>(easymotion-s2)

" インデントに色を付ける
Plugin 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_enable_on_vim_startup = 1

" コメントON/OFFを手軽に実行
Plugin 'tomtom/tcomment_vim'
  " tcommentで使用する形式を追加
  if !exists('g:tcomment_types')
    let g:tcomment_types = {}
  endif
  let g:tcomment_types = {
        \'php_surround' : "<?php %s ?>",
        \'eruby_surround' : "<%% %s %%>",
        \'eruby_surround_minus' : "<%% %s -%%>",
        \'eruby_surround_equality' : "<%%= %s %%>",
  \}
" マッピングを追加
function! SetErubyMapping2()
  nmap <buffer> <C-_>c :TCommentAs eruby_surround<CR>
  nmap <buffer> <C-_>- :TCommentAs eruby_surround_minus<CR>
  nmap <buffer> <C-_>= :TCommentAs eruby_surround_equality<CR>
  vmap <buffer> <C-_>c :TCommentAs eruby_surround<CR>
  vmap <buffer> <C-_>- :TCommentAs eruby_surround_minus<CR>
  vmap <buffer> <C-_>= :TCommentAs eruby_surround_equality<CR>
endfunction
" erubyのときだけ設定を追加
au FileType eruby call SetErubyMapping2()
" phpのときだけ設定を追加
au FileType php nmap <buffer><C-_>c :TCommentAs php_surround<CR>
au FileType php vmap <buffer><C-_>c :TCommentAs php_surround<CR>

" 非同期でLintツールを実行
Plugin 'dense-analysis/ale'
" 保存時のみ実行する
  let g:ale_lint_on_text_changed = 0
" 表示に関する設定
  let g:ale_sign_error = ''
  let g:ale_sign_warning = ''
  let g:airline#extensions#ale#open_lnum_symbol = '('
  let g:airline#extensions#ale#close_lnum_symbol = ')'
  let g:ale_echo_msg_format = '[%linter%]%code: %%s'
  let g:ale_linters = {
      \ 'php': ['phpcs', 'php'],
      \ 'python': ['flake8']
      \}
  let g:ale_python_flake8_options="--ignore=E501"
  let g:ale_statusline_format = ['E%d', 'W%d', '']
    "行頭のマークが出る部分を常に表示するようにする
  let g:ale_sign_column_always = 1
  "phpcbfのスタイルをPSR2に
  let g:ale_php_phpcbf_standard = 'PSR2'
  "phpcsのスタイルをPSR2に
  let g:ale_php_phpcs_standard = 'PSR2'
  "ファイル保存時に整形実行
  let g:ale_fix_on_save = 1
  "ファイルタイプとフォーマッターの対応設定
  let g:ale_fixers = {
  \ 'ruby': ['rubocop'],
  \ 'php': ['phpcbf'],
  \ 'javascript': ['eslint']
  \}

  highlight link ALEErrorSign Tag
  highlight link ALEWarningSign StorageClass
" Ctrl + kで次の指摘へ、Ctrl + jで前の指摘へ移動
  nmap <silent> <C-k> <Plug>(ale_previous_wrap)
  nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ソースコード整形ツールPrettier
Plugin 'prettier/vim-prettier'
  let g:prettier#autoformat = 1
  let g:prettier#autoformat_require_pragma = 0
  let g:prettier#autoformat_config_present = 1
  let g:prettier#autoformat_config_files = []
  let g:prettier#exec_cmd_path = "~/path/to/cli/prettier"
  let g:prettier#exec_cmd_async = 1
  let g:prettier#quickfix_enabled = 0
  let g:prettier#partial_format=1
  let g:prettier#quickfix_auto_focus = 0
  let g:prettier#quickfix_enabled = 0
  autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
  let g:prettier#config#print_width = 'auto'
  let g:prettier#config#tab_width = 'auto'
  let g:prettier#config#use_tabs = 'auto'
  let g:prettier#config#parser = ''
  let g:prettier#config#config_precedence = 'file-override'
  let g:prettier#config#prose_wrap = 'preserve'
  let g:prettier#config#html_whitespace_sensitivity = 'css'
  let g:prettier#config#require_pragma = 'false'
  let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')

" 検索
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
let $FZF_DEFAULT_OPTS="--layout=reverse"
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
" nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :GFiles<CR>
nnoremap <silent> <leader>G :GFiles?<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>r :Rg<CR>

" ripgrepで検索中、?を押すとプレビュー:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Filesコマンドにもプレビューを出す
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <leader>f :FZFOpenFile<CR>

" :FZFOpenFileでcall FZFOpenFileFunc()を実行します。
" <leader> fで直接call FZFOpenFileFunc()を実行できるようにしてもよいと思います
command! FZFOpenFile call FZFOpenFileFunc()

function! FZFOpenFileFunc()
    " カーソル下のファイルパスを取得
    let s:file_path = expand("<cfile>")

    " 空行などで実行されたりした場合の考慮
    if s:file_path == ''
        echo '[Error] <cfile> return empty string.'
        return 0
    endif

    " fzf実行
    " .DS_Store はmacの不要なファイル
    call fzf#run({
            \ 'source': 'find . -type d -name .git -prune -o ! -name .DS_Store',
            \ 'sink': 'e',
            \ 'options': '-x +s --query=' . shellescape(s:file_path),
            \ 'down':    '40%'})
endfunction

" coc.nvim コードを補完
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
"LightLineにcoc.nvimのステータスを載せます
let g:lightline = {
  \'active': {
    \'right': [
      \['coc']
    \]
  \},
  \'component_function': {
    \'coc': 'coc#status'
  \}
\}

"Diagnosticsの、左横のアイコンの色設定
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172
"ノーマルモードで
"スペース2回でCocList
nmap <silent> <space><space> :<C-u>CocList<cr>
"スペースhでHover
nmap <silent> <space>h :<C-u>call CocAction('doHover')<cr>
"スペースdfでDefinition
nmap <silent> <space>df <Plug>(coc-definition)
"スペースrfでReferences
nmap <silent> <space>rf <Plug>(coc-referencesu
"スペースrnでRename
nmap <silent> <space>rn <Plug>(coc-rename)
"スペースfmtでFormat
nmap <silent> <space>fmt <Plug>(coc-format)

" tailwindcss の補完
Plugin 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

" vdebug
Plugin 'vim-vdebug/vdebug'

Plugin 'bronson/vim-trailing-whitespace'

" Live Server を使える
" Plugin 'turbio/bracey.vim'
" let g:bracey_browser_command




call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

"--------------------------------------------------------------
"          shell                                            <<<
"--------------------------------------------------------------
set shell=/bin/zsh
" <<<

"--------------------------------------------------------------
"          source local settings                            <<<
"--------------------------------------------------------------
if filereadable(expand('~/dotfiles/local/local.vim'))
  source ~/dotfiles/local/local.vim
endif
" <<<

"--------------------------------------------------------------
"          encoding & color                                 <<<
"--------------------------------------------------------------
"language en_US.UTF-8
set encoding=utf-8
scriptencoding utf8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set t_Co=256
" <<<

"--------------------------------------------------------------
"          Vim Options                                      <<<
"--------------------------------------------------------------
" <Leader>キー
let mapleader = "-"

" スワップファイルの作成先を変更
set noswapfile

" ヤンクに*レジスタを使う
set clipboard=unnamed

" ビープ音を消す
set belloff=all

" 行番号系
set number

" 行の相対番号表記
set relativenumber

" タイトル系
set title

" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start

" 検索するときに大文字小文字を区別しない
set ignorecase

" 検索した時にハイライト
set hlsearch

" auto read
set autoread

" マウスを有効化
set mouse=a

" 折り畳みしない
set foldlevel=50

" 常にスタートラインを表示する
set laststatus=2

" 最後に実行したコマンドをステータスラインに表示する
set showcmd

" 括弧の対応関係を一瞬表示する
set showcmd

" カーソルラインをハイライト
set cursorline
" <<<

"--------------------------------------------------------------
"          indent, space, tab                               <<<
"--------------------------------------------------------------
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
au FileType go setlocal sw=4 ts=4 sts=4 noet
set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" タブ文字を >- で可視化
" set listchars=tab:>-

" 複数の設定値を適用したい場合
" set listchars=tab:>-,space:-

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=red gui=reverse guifg=red
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

" <<<

"--------------------------------------------------------------
"          key mapping                                      <<<
"--------------------------------------------------------------
vnoremap x "_x
nnoremap x "_x
nnoremap bd :bd<CR>

" 括弧の補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap ` ``<LEFT>
inoremap < <><LEFT>

" 関数括弧の補完
inoremap {<CR> {}<Left><CR><ESC><S-o>
inoremap [<CR> []<Left><CR><ESC><S-o>
inoremap (<CR> ()<Left><CR><ESC><S-o>

" クオーテーションの補完
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

" insertモードでemacsのキーバインドを使えるようにする
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>

" visualモードで選択してからのインデント調整で調整後に選択範囲を開放しない
vnoremap > >gv
vnoremap < <gv

" 画面分割系
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

" , キーで次タブのバッファを表示
nnoremap <silent> , :bprev<CR>
" . キーで前タブのバッファを表示
nnoremap <silent> . :bnext<CR>
" bdで現在のバッファを削除
nnoremap bd :bd<CR>

nmap <F8> :TagbarToggle<CR>
" terminal mode
" USAGE) <C-y>: change mode to job-mode, i: back to teminal-normal-mode
tmap <C-y> <c-\><c-n>

" Git コマンド
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gps :Gpush<CR>
noremap <Leader>gpl :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>


" <<<

"--------------------------------------------------------------
"          plugin manager                                   <<<
"--------------------------------------------------------------
" if &compatible
"   set nocompatible
" endif
"
" " プラグインがインストールされるディレクトリ
" let s:dein_dir = expand('~/vim/.vim/bundles')
"
" " dein.vim本体
" let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
"
" if &runtimepath !~# '/dein.vim'
"   if !isdirectory(s:dein_repo_dir)
"     execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
"   endif
"   execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
" endif
"
" " tomlセット
" let s:toml_dir = expand('~/.dein/')
" let s:toml=s:toml_dir . 'dein.toml'
" let s:toml_lazy=s:toml_dir . 'dein-lazy.toml'
"
" " プラグインのロード
" if dein#load_state(s:dein_dir)
"   call dein#begin(s:dein_dir)
"
"   call dein#load_toml(s:toml)
"   call dein#load_toml(s:toml_lazy, {'lazy': 1})
"
"   call dein#end()
"   call dein#save_state()
" endif
"
" インストールしていないプラグインがあればインストールを実行
" if dein#check_install()
"  call dein#install()
" endif
" <<<

"--------------------------------------------------------------
"          tmux                                             <<<
"--------------------------------------------------------------
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax enable
colorscheme slate
filetype plugin indent on
" <<<
"
" https://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
"--------------------------------------------------------------
" 挿入モード時、ステータスラインの色を変更
"--------------------------------------------------------------
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction
" <<<

"--------------------------------------------------------------
" 最後のカーソル位置を復元する
"--------------------------------------------------------------
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
