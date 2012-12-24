" Usa todo o suco do viM
set nocompatible

" Configura pathogen para ficar mais legalzinho de instalar plugins
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" ------------------------------------------------------------
" Configura LEADER KEY

" Muda leader de \ para ,
let mapleader=","

" ------------------------------------------------------------
" Editar e recarregar vimrc

" Para editar vimrc: ,ev
nmap <silent> <leader>ev :e $MYVIMRC<CR>
" Para recarregar vimrc: ,sv
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"------------------------------------------------------------
" Configurações gerais do VIM

" Não fecha buffers quando abre outro arquivo
" Faz não ser necessário salvar ou descartar mudanças
set hidden

set nowrap    			" não quebra linha
set tabstop=2			" tab = 2 espaços
set backspace=indent,eol,start	" backspace funciona para tudo no modo insert
set autoindent			" indentação automática
set copyindent			" copia a indentação passada no autoindent
set number			" mostra número de linhas
set shiftwidth=2		" tamanho dos espaços para autoindent
set shiftround			" usa múltiplos de shiftwidth com < e >
set showmatch			" mostra parênteses relacionados
set ignorecase			" ignora maiúscula/minúsculas quando procurando
set smartcase			" ignora maiusc/min se tudo é minúscula
                                " case sensitive caso contrário
set smarttab			" indentação no início da linha de acordo com 
                                " shiftwidth e não tabstop
set hlsearch			" highligh os termos de busca
set incsearch			" mostra resultados de busca eqto digita

set history=1000		" histórico de comandos maior
set undolevels=1000		" muitos níveis de undo
set wildignore=*.swp,*.bak,*.pyc,*.class
                                " ignora esses tipos quando completa nomes
                                " com TAB

set title			" muda título do terminal
set visualbell			" não apita
set noerrorbells		" NÃO APITA
set visualbell			" NÃO PISCA (ô coisa chata!)
set t_vb=
if has('autocmd')
	autocmd GUIEnter * set visualbell t_vb=
	autocmd vimenter * set visualbell t_vb=
endif

" --------------------------------------------------------------------
" Plugins  para tipo de arquivo
filetype plugin indent on

" --------------------------------------------------------------------
" Esquema de cor: mustang 
" http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484

if &t_Co >= 256 || has("gui_running")
  colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
  syntax on
endif

" --------------------------------------------------------------------
" Remapeia : para ;. Salvar nunca foi tão fácil com ;w
nnoremap ; :

" -------------------------------------------------------------------
" Para um jovem padawan aprender a usar o VIM com o poder da força
" Desabilita as setas
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" -------------------------------------------------------------------
" Facilidade para andar por janelas, adeus Ctrl-W
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" -------------------------------------------------------------------
" Limpa o buffer de busca com ,/
nmap <silent> <LEADER>/ :nohlsearch<CR>


" ------------------------------------------------------------------
" Modo especial para inserir caracteres com shift+insert sem 
" ferrar a indentação
set pastetoggle=<F12>


" -------------------------------------------------------------------
" Salvar arquivos não abertos com sudo, usando w!! (HOLY BANANAS, BATMAN!)
cmap w!! w !sudo tee % >/dev/null

" -------------------------------------------------------------------
" PLUGINS CONFIGS

" NERDTree

autocmd vimenter * if !argc() | NERDTree | endif
				" abre o NERDTree se o vim for aberto sem
				" parâmetros
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
				" fecha o vim se a única janela aberta é
				" o NERDTree

map <F2> :NERDTreeToggle<CR>
