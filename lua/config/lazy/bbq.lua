local M = {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    -- configurations go here
    exclude_filetypes = {
      "netrw",
      "toggleterm",
      "nvim-tree",
    },
  },
}

--[[ return M; ]]
return {}
