" �����R�[�h��������
set encoding=utf8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf8
" ���s�R�[�h�̎����F��
set fileformats=unix,dos,mac
set columns=85
set lines=40
" �������ɑ啶���������𖳎�(noignorecase:�������Ȃ�)
set ignorecase
" �啶�����������̗Ö@���܂܂�Ă���ꍇ�͑啶�������������
set smartcase
" �C���N�������^���T�[�`���s��
set incsearch
" �n�C���C�g
set hlsearch
" ESC2��Ńn�C���C�g������
nnoremap <ESC><ESC> :nohlsearch<CR>
" �J���[�ݒ�
"/usr/share/vim/vim74/colors
colorscheme jellybeans
" vim���:highlight�Ƒłƌ��݂̐F�ݒ�������
" ���������̐F��ύX
highlight Search ctermfg=212 ctermbg=239
" �s�ԍ��̐F��ύX
autocmd ColorScheme * highlight LineNr ctermfg=8
" �J�[�\�����C���̐F
hi CursorLineNr term=bold   cterm=NONE ctermfg=15 ctermbg=NONE
" java��import���̐F��ύX
highlight javaExternal ctermfg=5
" �J�[�\�����̖��O�̃t�@�C�����J��
nnoremap gf :tabe <cfile><CR>
vnoremap gf :tabe <cfile><CR>
" cursorline�̐F���N���A
set cursorline
hi clear CursorLine
" �^�u�̉�ʏ�ł̕�
set tabstop=4
" �^�u���X�y�[�X�ɓW�J����(noexpandtab:�W�J���Ȃ�)
set expandtab
" �����I�ɃC���f���g����
set autoindent
" �V�����s����������ɍ��x�Ȏ����C���f���g���s��
set smartindent
" �����C���f���g�ł���镝
set shiftwidth=4
" �o�b�N�X�y�[�X�ŃC���f���g����s���폜�ł���悤�ɂ���
set backspace=indent,eol,start
" �������Ƀt�@�C���̍Ō�܂ōs������ŏ��ɖ߂�
set wrapscan
" ���ʓ��͎��ɑΉ����銇�ʂ�\��
set showmatch
" �R�}���h���C���⊮����Ƃ��ɋ������ꂽ���̂��g��(�Q�ƁFhelp wildmenu)
set wildmenu
" �e�L�X�g�}�����̎����܂�Ԃ�����{��ɑΉ�������
set formatoptions+=mM
" �����N�ŃN���b�v�{�[�h�ɃR�s�[
set clipboard=unnamed,autoselect
" �}�E�X���[�h�L��
set mouse=a
" �}�E�X�̈ړ��Ńt�H�[�J�X�������I�ɐ؂�ւ��Ȃ�
"set nomousefocus
set mousehide
" �}�����[�h�I������IME��Ԃ�ۑ����Ȃ�
"inoremap <silent> <unique> <Esc> <Esc>:set imsearch=0 iminsert=0<CR>
"inoremap <silent> <C-[> <Esc>
"inoremap <silent> <C-j> <Esc>
" �}�����[�h�ł̓��{�����ON/OFF���L������(<C-j>������Ă邽�ߎg�p���Ȃ�)
"inoremap <silent> <C-j> <C-^>
"---------------------------------------------------------------------------
" GUI�ŗL�ł͂Ȃ���ʕ\���̐ݒ�:
"
" �s�ԍ���\�� (unnumber:��\��)
set number
" ���[���[��\�� (noruler:��\��)
set ruler
" �^�u����s��\�� (list:�\��)
set list
" �ǂ̕����Ń^�u����s��\�����邩��ݒ�
set listchars=tab:>-,extends:<,trail:-,eol:<
" �����s��܂�Ԃ��ĕ\�� (nowrap:�܂�Ԃ��Ȃ�)
set wrap
" ��ɃX�e�[�^�X�s��\�� (�ڍׂ�:he laststatus)
set laststatus=2
" �R�}���h���C���̍��� (Windows�pgvim�g�p����gvimrc��ҏW���邱��)
set cmdheight=2
" �R�}���h���X�e�[�^�X�s�ɕ\��
set showcmd
" �^�C�g����\��
set title
" �X�e�[�^�X���C���Ɂu��΃p�X�v�u�ǂݎ���p�\���v�u�s���v�u�񐔁v��\��
set statusline=%F%r%=%l,%c
" ��ʂ����n�ɔ��ɂ��� (���s�̐擪�� " ���폜����ΗL���ɂȂ�)
"colorscheme evening " (Windows�pgvim�g�p����gvimrc��ҏW���邱��)
"colorscheme jellybeans
"---------------------------------------------------------------------------
" �t�@�C������Ɋւ���ݒ�:
"
" �o�b�N�A�b�v�t�@�C�����쐬���Ȃ� (���s�̐擪�� " ���폜����ΗL���ɂȂ�)
"set nobackup
set backupdir=/home/centos/vimbak
set directory=/home/centos/vimbak
set undodir=/home/centos/vimbak
"---------------------------------------------------------------------------
" �L�[�}�b�v�ύX
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

" ���̓��[�h�ł̃J�[�\���ړ�
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" ���ʂ̕⊮
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap ' ''<Left>
inoremap " ""<Left>

"vim-submode�Ƃ����v���O�C�����K�v
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
"�^�u�ɔԍ���U��
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
set showtabline=2 " ��Ƀ^�u���C����\��

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 ��1�ԍ��̃^�u�At2 ��1�ԍ�����2�Ԗڂ̃^�u�ɃW�����v

" tc �V�����^�u����ԉE�ɍ��
map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tx �^�u�����
"map <silent> [Tag]x :tabclose<CR>
" tn ���̃^�u
"map <silent> [Tag]n :tabnext<CR>
"map <silent> [Tag]p :tabprevious<CR>
