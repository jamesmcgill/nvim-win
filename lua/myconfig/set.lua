vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.ruler = true
vim.opt.colorcolumn = "101"

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("USERPROFILE") .. "/AppData/Local/nvim-data/undodir"
-- vim.opt.undodir = "/Users/james/.local/share/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.list = true
vim.opt.listchars = 'tab:▸ ,trail:°'
-- vim.opt.listchars = 'tab:▸ ,trail:•,space:.'
-- vim.opt.listchars = 'trail:°'
vim.api.nvim_set_hl(0, 'TrailingWhitespace', { bg='LightRed' })
vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*',
    command = [[
        syntax clear TrailingWhitespace |
        syntax match TrailingWhitespace "\_s\+$"
    ]]
})
