function ColorMyPencils(color)
  color = color or "tokyonight-night"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   opts = {},
  --   config = function()
  --     ColorMyPencils()
  --   end
  -- },
  {
    "vague2k/vague.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      vim.cmd("colorscheme vague")
    end
  },
}
