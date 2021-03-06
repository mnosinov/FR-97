let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
imap <C-S> :wa:call system('ctags --recurse=yes --exclude=node_modules --exclude=.git --exclude=__pycache__'):mks!
imap <F8>  :TagbarToggle
inoremap <F11>  :b #
inoremap <F10>  :bnext
inoremap <F9>  :bprevious 
inoremap <F2>  :CtrlPMRU
inoremap <F3>  :CtrlPBuffer
inoremap <F12>  :NERDTreeToggle
nnoremap  :Rg
nnoremap  
nnoremap <NL> <NL>
nnoremap  
nnoremap  
nnoremap  :nohlsearch
nnoremap <silent>  :CtrlP
nmap  :wa:call system('ctags --recurse=yes --exclude=node_modules --exclude=.git --exclude=__pycache__'):mks!
nnoremap   za
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nmap ,m <Plug>(emmet-merge-lines)
nmap ,A <Plug>(emmet-anchorize-summary)
nmap ,a <Plug>(emmet-anchorize-url)
nmap ,k <Plug>(emmet-remove-tag)
nmap ,j <Plug>(emmet-split-join-tag)
nmap ,/ <Plug>(emmet-toggle-comment)
nmap ,I <Plug>(emmet-image-encode)
nmap ,i <Plug>(emmet-image-size)
nmap ,N <Plug>(emmet-move-prev)
nmap ,n <Plug>(emmet-move-next)
nmap ,D <Plug>(emmet-balance-tag-outword)
nmap ,d <Plug>(emmet-balance-tag-inward)
nmap ,u <Plug>(emmet-update-tag)
nmap ,; <Plug>(emmet-expand-word)
nmap ,, <Plug>(emmet-expand-abbr)
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap \d :YcmShowDetailedDiagnostic
map \g :YcmCompleter GoToDefinitionElseDeclaration
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap <SNR>114_: :=v:count ? v:count : ''
nnoremap <silent> <Plug>(YCMFindSymbolInDocument) :call youcompleteme#finder#FindSymbol( 'document' )
nnoremap <silent> <Plug>(YCMFindSymbolInWorkspace) :call youcompleteme#finder#FindSymbol( 'workspace' )
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-encode) :call emmet#imageEncode()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <C-P> :CtrlP
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nmap <C-S> :wa:call system('ctags --recurse=yes --exclude=node_modules --exclude=.git --exclude=__pycache__'):mks!
nmap <F8> :TagbarToggle
nnoremap <C-G> :Rg
nnoremap <F11> :b #
nnoremap <F10> :bnext
nnoremap <F9> :bprevious 
nnoremap <F5> :so $VIMRUNTIME/syntax/hitest.vim
nnoremap <F2> :CtrlPMRU
nnoremap <F3> :CtrlPBuffer
nnoremap <F12> :NERDTreeToggle
nnoremap <C-H> 
nnoremap <C-L> 
nnoremap <C-K> 
nnoremap <C-J> <NL>
inoremap <expr> 	 pumvisible() ? "\" : "\	"
imap  :wa:call system('ctags --recurse=yes --exclude=node_modules --exclude=.git --exclude=__pycache__'):mks!
cnoremap ls ls:b
let &cpo=s:cpo_save
unlet s:cpo_save
set keymap=russian-jcukenwin
set background=dark
set backspace=indent,eol,start
set clipboard=unnamed
set completeopt=menuone,preview
set cpoptions=aAceFsB
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set hlsearch
set imsearch=0
set incsearch
set langmap=????????????????????????????????????????????????????;ABCDEFGHIJKLMNOPQRSTUVWXYZ,????????????????????????????????????????????????????;abcdefghijklmnopqrstuvwxyz
set laststatus=2
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set mouse=a
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/syntastic,~/.vim/bundle/vim-flake8,~/.vim/bundle/nerdtree,~/.vim/bundle/tagbar,~/.vim/bundle/indentpython.vim,~/.vim/bundle/YouCompleteMe,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-obsession,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/fzf,~/.vim/bundle/fzf.vim,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/SimpylFold,~/.vim/bundle/emmet-vim,~/.vim/bundle/indentLine,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vim81/pack/dist/opt/matchit,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/syntastic/after,~/.vim/bundle/vim-flake8/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/tagbar/after,~/.vim/bundle/indentpython.vim/after,~/.vim/bundle/YouCompleteMe/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/vim-obsession/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/fzf/after,~/.vim/bundle/fzf.vim/after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/vim-airline-themes/after,~/.vim/bundle/SimpylFold/after,~/.vim/bundle/emmet-vim/after,~/.vim/bundle/indentLine/after
set scrolloff=7
set shortmess=filnxtToOSc
set noshowmode
set smartcase
set splitbelow
set splitright
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tags=tags,./tags
set ttimeout
set ttimeoutlen=1
set wildignore=*/__pycache__/*,*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,tags
set window=63
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/frontend/fr97/001-rare_tags
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd index.html
edit index.html
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
lnoremap <buffer> " ??
lnoremap <buffer> # ???
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' ??
lnoremap <buffer> , ??
lnoremap <buffer> . ??
lnoremap <buffer> / .
lnoremap <buffer> : ??
lnoremap <buffer> ; ??
lnoremap <buffer> < ??
lnoremap <buffer> > ??
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A ??
lnoremap <buffer> B ??
lnoremap <buffer> C ??
lnoremap <buffer> D ??
lnoremap <buffer> E ??
lnoremap <buffer> F ??
lnoremap <buffer> G ??
lnoremap <buffer> H ??
lnoremap <buffer> I ??
lnoremap <buffer> J ??
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> K ??
lnoremap <buffer> L ??
lnoremap <buffer> M ??
lnoremap <buffer> N ??
lnoremap <buffer> O ??
lnoremap <buffer> P ??
lnoremap <buffer> Q ??
lnoremap <buffer> R ??
lnoremap <buffer> S ??
lnoremap <buffer> T ??
lnoremap <buffer> U ??
lnoremap <buffer> V ??
lnoremap <buffer> W ??
lnoremap <buffer> X ??
lnoremap <buffer> Y ??
lnoremap <buffer> Z ??
lnoremap <buffer> [ ??
lnoremap <buffer> ] ??
lnoremap <buffer> ^ :
lnoremap <buffer> ` ??
lnoremap <buffer> a ??
lnoremap <buffer> b ??
lnoremap <buffer> c ??
lnoremap <buffer> d ??
lnoremap <buffer> e ??
lnoremap <buffer> f ??
lnoremap <buffer> g ??
lnoremap <buffer> h ??
lnoremap <buffer> i ??
lnoremap <buffer> j ??
lnoremap <buffer> k ??
lnoremap <buffer> l ??
lnoremap <buffer> m ??
lnoremap <buffer> n ??
lnoremap <buffer> o ??
lnoremap <buffer> p ??
lnoremap <buffer> q ??
lnoremap <buffer> r ??
lnoremap <buffer> s ??
lnoremap <buffer> t ??
lnoremap <buffer> u ??
lnoremap <buffer> v ??
lnoremap <buffer> w ??
lnoremap <buffer> x ??
lnoremap <buffer> y ??
lnoremap <buffer> z ??
lnoremap <buffer> { ??
lnoremap <buffer> } ??
lnoremap <buffer> ~ ??
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=81
setlocal colorcolumn=81
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=99
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=ru,ru_yo,en_us
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
8
normal! zo
15
normal! zo
24
normal! zo
32
normal! zo
let s:l = 38 - ((37 * winheight(0) + 31) / 62)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 036|
tabnext 1
badd +0 index.html
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
