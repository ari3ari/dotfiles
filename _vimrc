" 文字コード自動判別
set encoding=utf8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf8
" 改行コードの自動認識
set fileformats=unix,dos,mac
set columns=85
set lines=40
" 検索時に大文字小文字を無視(noignorecase:無視しない)
set ignorecase
" 大文あ字小文字の療法が含まれている場合は大文字小文字を区別
set smartcase
" インクリメンタルサーチを行う
set incsearch
" ハイライト
set hlsearch
" ESC2回でハイライトを消す
nnoremap <ESC><ESC> :nohlsearch<CR>
" カラー設定
"/usr/share/vim/vim74/colors
colorscheme jellybeans
" vim上で:highlightと打つと現在の色設定を見れる
" 検索文字の色を変更
highlight Search ctermfg=212 ctermbg=239
" 行番号の色を変更
autocmd ColorScheme * highlight LineNr ctermfg=8
" カーソルラインの色
hi CursorLineNr term=bold   cterm=NONE ctermfg=15 ctermbg=NONE
" javaのimport文の色を変更
highlight javaExternal ctermfg=5
" カーソル下の名前のファイルを開く
nnoremap gf :tabe <cfile><CR>
vnoremap gf :tabe <cfile><CR>
" cursorlineの色をクリア
set cursorline
hi clear CursorLine
" タブの画面上での幅
set tabstop=4
" タブをスペースに展開する(noexpandtab:展開しない)
set expandtab
" 自動的にインデントする
set autoindent
" 新しい行を作った時に高度な自動インデントを行う
set smartindent
" 自動インデントでずれる幅
set shiftwidth=4
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" 検索時にファイルの最後まで行ったら最初に戻る
set wrapscan
" 括弧入力時に対応する括弧を表示
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照：help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect
" マウスモード有効
set mouse=a
" マウスの移動でフォーカスを自動的に切り替えない
"set nomousefocus
set mousehide
" 挿入モード終了時にIME状態を保存しない
"inoremap <silent> <unique> <Esc> <Esc>:set imsearch=0 iminsert=0<CR>
"inoremap <silent> <C-[> <Esc>
"inoremap <silent> <C-j> <Esc>
" 挿入モードでの日本語入力ON/OFFを記憶する(<C-j>が被ってるため使用しない)
"inoremap <silent> <C-j> <C-^>
"---------------------------------------------------------------------------
" GUI固有ではない画面表示の設定:
"
" 行番号を表示 (unnumber:非表示)
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (list:表示)
set list
" どの文字でタブや改行を表示するかを設定
set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title
" ステータスラインに「絶対パス」「読み取り専用表示」「行数」「列数」を表示
set statusline=%F%r%=%l,%c
" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening " (Windows用gvim使用時はgvimrcを編集すること)
"colorscheme jellybeans
"---------------------------------------------------------------------------
" ファイル操作に関する設定:
"
" バックアップファイルを作成しない (次行の先頭の " を削除すれば有効になる)
"set nobackup
set backupdir=/home/centos/vimbak
set directory=/home/centos/vimbak
set undodir=/home/centos/vimbak
"---------------------------------------------------------------------------
" キーマップ変更
" http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

" 入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" 括弧の補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap ' ''<Left>
inoremap " ""<Left>

"vim-submodeというプラグインが必要
"call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
"call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
"call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
"call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
"call submode#map('bufmove', 'n', '', '>', '<C-w>>')
"call submode#map('bufmove', 'n', '', '<', '<C-w><')
"call submode#map('bufmove', 'n', '', '+', '<C-w>+')
"call submode#map('bufmove', 'n', '', '-', '<C-w>-')

"http://msrx9.bitbucket.org/blog/html/2012/07/25/vi_tips_esc_2_cj_.html
imap <c-j> <esc>

"qiita.com/wadako111/items/755e753677dd72d8036d
"タブに番号を振る
" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

" tc 新しいタブを一番右に作る
map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tx タブを閉じる
"map <silent> [Tag]x :tabclose<CR>
" tn 次のタブ
"map <silent> [Tag]n :tabnext<CR>
"map <silent> [Tag]p :tabprevious<CR>
