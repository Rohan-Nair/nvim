return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = false,
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,
    view_options = {
      show_hidden = false,
      is_hidden_file = function(name)
        return name ~= ".." and vim.startswith(name, ".")
      end,
      show_parent_dir = true,
      delete_to_trash = true
    }
  }
}
