return ({
  "windwp/nvim-ts-autotag",
  ft = {
    "javascript",
    "javscriptreact",
    "typescript",
    "typescriptreact"
  },
  config = function()
    require("nvim-ts-autotag").setup()
  end
})
