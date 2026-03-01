return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background
                bg = "#3b2f31",
                bg_dark = "#3b2f31",
                bg_highlight = "#443739",

                -- Foreground
                fg = "#eadddd",
                fg_dark = "#b8a9a9",
                comment = "#8f7f80",

                -- Accents (reduced competition)
                red = "#d07a7a",       -- errors only
                orange = "#d6c37a",    -- numbers/constants
                yellow = "#d6c37a",    -- warnings/types
                green = "#7fa68f",     -- strings / calm highlight
                cyan = "#79a6a3",      -- params / hints
                blue = "#8fa3d1",      -- functions (soft)
                purple = "#b08fd1",    -- rare keywords
                magenta = "#b08fd1",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}