local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

--togglear netrw
vim.keymap.set('n', '<leader>pv', function()
  if vim.bo.filetype == 'netrw' then
    vim.cmd('bd')
  else
    vim.cmd('Ex')
  end
end)
