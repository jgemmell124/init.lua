return {
    "Wansmer/treesj",
    keys = { "<leader>m", "<leader>j" },

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },

    config = function ()
        require("treesj").setup({
            -- your configuration comes here
        })
    end
}
