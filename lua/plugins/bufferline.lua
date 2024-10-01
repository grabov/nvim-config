return {
    "akinsho/bufferline.nvim",
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup({
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        text_align = "left",
                        separator = true,
                    },
                },
            },
        })

        vim.opt.termguicolors = true
        vim.keymap.set("n", "gt", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "gT", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
    end,
}
