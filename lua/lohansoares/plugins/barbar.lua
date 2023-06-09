local status, barbar = pcall(require, 'barbar')
if not status then
    return
end

barbar.setup({
    
    clickable = false,
    
    tabpages = true,
    
    animation = false,

    highlight_inactive_file_icons = false,

    highlight_visible = true,

    icons = {
        buffer_index = true,
        buffer_number = false,
        button = '',
    },
})
