-- Removes the intro text on launch
-- vim.o.shortmess = vim.o.shortmess .. 'I'

vim.wo.wrap = false

vim.keymap.set('n', 'yrp', '<cmd>let @+=@%<CR>', { desc = '[R]elative Path' })
vim.keymap.set('n', 'yrl', "<cmd>let @+=join([expand('%'),  line('.')], ':')<CR>", { desc = 'With [L]ine Number' })
vim.keymap.set('n', 'yc', '<cmd>%y+<CR>', { desc = 'Buffer [C]ontent' })

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { '*' },
  command = [[%s/\s\+$//e]],
})
