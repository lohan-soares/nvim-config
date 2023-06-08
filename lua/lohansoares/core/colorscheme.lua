require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = true, -- disables setting the background color.
    styles = {},
    color_overrides = {},
    custom_highlights = {},
    integrations = {},
})

local status, _ = pcall(vim.cmd, 'colorscheme catppuccin')
if not status then
    print('Colorscheme not found!')
    return
end
