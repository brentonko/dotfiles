-- Remap space as leader key
--vim.g.mapleader = " "
--vim.g.maplocalleader = " "

-- title options
vim.opt.title = true
--vim.opt.titlestring = '%{expand("%:f")}'

-- basic options
vim.opt.syntax = "on"
vim.opt.guifont = "Hack Nerd Font Mono:h10"
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 100
vim.opt.autoread = true

-- file encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- allow backspacing over everything in insert mode
vim.opt.number = true      -- show line numbers
vim.opt.linebreak = true   -- wrap lines at convenient points
vim.opt.cursorline = true

-- buffer options
--vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true

-- default indent settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.colorcolumn = "120"
vim.opt.smartindent = true -- smart indent
vim.opt.autoindent = true

-- search options
-- vim.opt.smartcase = true -- smart case

-- spelling
vim.opt.spelloptions = "camel,noplainbuffer"

-- command completion
vim.opt.wildmode = "longest:full:full"

-- folding settings
vim.opt.foldmethod = "expr"   -- fold based on indent
vim.opt.foldlevelstart = 99
--vim.opt.foldlevel = 99
vim.opt.foldcolumn = "1"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true
vim.opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "/",
	eob = " ",
}

--vim.opt.formatoptions-=o -- dont continue comments when pushing o/O

-- vertical/horizontal scroll off settings
vim.opt.scrolloff = 3
vim.opt.sidescrolloff = 7

-- command completion
vim.opt.wildmode = "list:longest"   -- make cmdline tab completion similar to bash
vim.opt.wildignore = "*.o,*.obj,*~,*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.db"

