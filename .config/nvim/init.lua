-- enable mouse in all modes
vim.o.mouse = 'a'

vim.o.completeopt = 'menuone,noselect'

-- at moment i thought i understood how indentation settings work
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoindent = true

-- no swapfiles
vim.o.swapfile = false
vim.o.number = true
vim.o.relativenumber = true

-- only ignore case in command completion
vim.cmd [[
    augroup ignorecase_commandmode
        autocmd!
        autocmd CmdLineEnter : let &ignorecase = 1
        autocmd CmdLineLeave : let &ignorecase = 0
    augroup end
]]

vim.o.hlsearch = false

-- Russian keys
vim.o.langmap = 'йцукенгшщзхъфывапролджэячсмитьбю;qwertyuiop[]asdfghjkl\\;\'zxcvbnm\\,.,ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>'

vim.cmd.cabbrev('ц', 'w')
vim.cmd.cabbrev('й', 'q')
vim.cmd.cabbrev('цй', 'wq')
vim.cmd.cabbrev('йф', 'qa')

vim.g.mapleader = ' '

vim.o.timeout = false

vim.keymap.set('t', '<A-[>', '<C-\\><C-N>')

vim.keymap.set('n', '<C-j>', '<Cmd>bnext<CR>')
vim.keymap.set('n', '<C-k>', '<Cmd>bprevious<CR>')

vim.o.guifont = 'Fira Code:h10'

vim.o.title = true

if vim.g.neovide then
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_cursor_vfx_mode = 'sonicboom'
  vim.g.neovide_cursor_animation_length = 0.15
  vim.g.neovide_cursor_trail_size = 0.3
  vim.g.neovide_refresh_rate = 80
end
