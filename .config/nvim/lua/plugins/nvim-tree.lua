return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({
        default = true,
      })
      require("nvim-tree").setup({
          git = {
            enable = true,
            ignore = false,
            timeout = 500,
          },
        })
    end,
  },
}
