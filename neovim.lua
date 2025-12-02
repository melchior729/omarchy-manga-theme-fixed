return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#020202", -- Default background
                base01 = "#aca7a7", -- Lighter background (status bars)
                base02 = "#020202", -- Selection background
                base03 = "#aca7a7", -- Comments, invisibles
                base04 = "#C3C3C3", -- Dark foreground
                base05 = "#d1cfcf", -- Default foreground
                base06 = "#d1cfcf", -- Light foreground
                base07 = "#C3C3C3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#9a8e8e", -- Variables, errors, red
                base09 = "#c6bebe", -- Integers, constants, orange
                base0A = "#a89e9e", -- Classes, types, yellow
                base0B = "#a19797", -- Strings, green
                base0C = "#aea5a5", -- Support, regex, cyan
                base0D = "#afa6a6", -- Functions, keywords, blue
                base0E = "#9f9595", -- Keywords, storage, magenta
                base0F = "#d4cece", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
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
