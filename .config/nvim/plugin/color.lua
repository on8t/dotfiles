if os.getenv('TERM') ~= 'linux' then
  vim.o.termguicolors = true
end


vim.api.nvim_create_autocmd('ColorScheme', {
  group = vim.api.nvim_create_augroup('transparent_bg', {}),
  callback = function()
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'none' })
    require('lualine').setup {}
  end
})