set autoindent " 자동 들여쓰기
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set bs=eol,start,indent
set cindent " C언어 자동 들여쓰기
set expandtab
set hlsearch " 검색어 하이라이팅
set history=256
set incsearch
set laststatus=2 " 상태바 표시 항상
set mouse=a
set nu
"set paste " 붙여넣기 계단현상 없애기
set ruler " 현재 커서 위치 표시
set scrolloff=2
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set softtabstop=4
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set sts=4 "st select
set tabstop=4
set ts=4 "tag select
set wildmode=longest,list

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
  set fileencoding=korea
endif

" 구문 강조 사용
if has("syntax")
 syntax on
endif

nnoremap <F9> :!g++ -std=c++17 % -Wall -g -o %<.out && ./%<.out<CR>
nnoremap <S-F9> :vs input.txt<CR>
nnoremap <C-F9> :!g++ -std=c++17 % -Wall -g -o %<.out && cat input.txt && echo && ./%<.out < input.txt<CR>

set clipboard=unnamedplus
nnoremap <C-S-F9> :%y+<CR>
