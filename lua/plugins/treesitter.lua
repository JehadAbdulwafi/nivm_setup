return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter.configs').setup {
      sync_install = false,
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

      auto_install = true,

      ignore_install = { "javascript" },

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      }, }
  end

}
