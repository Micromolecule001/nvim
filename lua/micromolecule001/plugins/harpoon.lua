return {
  "ThePrimeagen/harpoon",
  config = function()
    local harpoon = require("harpoon")
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    -- Keybindings
    vim.api.nvim_set_keymap("n", "<leader>a", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<C-e>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<C-h>", ":lua require('harpoon.ui').nav_next()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<C-t>", ":lua require('harpoon.ui').nav_prev()<CR>", { noremap = true, silent = true })
  end
}
