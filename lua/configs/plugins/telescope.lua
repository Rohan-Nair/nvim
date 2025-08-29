return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' },
    -- 'andrew-george/telescope-themes', -- theme switcher (can remove)
  },

  config = function()
    -- local telescope = require('telescope')
    -- telescope.load_extension('themes')
    require('telescope').setup({})

    local builtin = require('telescope.builtin')
    local ivy = require('telescope.themes').get_ivy()

    -- find files
    vim.keymap.set('n', '<leader>pf', function()
      builtin.find_files(ivy)
    end)
    -- find in git files
    vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
    -- live grep
    vim.keymap.set('n', '<leader>plg', function()
      builtin.live_grep(ivy)
    end)
    -- vim.keymap.set('n', '<leader>plg', builtin.live_grep, {})
    -- find files in nvim config
    vim.keymap.set('n', '<leader>nvim', function()
      builtin.find_files {
        opts = ivy,
        cwd = vim.fn.stdpath("config")
      }
    end)

    -- find the current word in the project
    vim.keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)
    -- find the current word in the project (including punctionations)
    vim.keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)

    -- grep strings in the projct
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)

    -- find in tags
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end
}
