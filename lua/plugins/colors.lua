function ColorsMyPencils(color)
  color = color or 'nightfly'
  vim.cmd.colorscheme('nightfly')

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  "bluz71/vim-nightfly-colors", name = "nightfly",

  config = function()
    ColorsMyPencils()
  end
}

