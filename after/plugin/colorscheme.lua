
-- COLOR SCHEMES

function setColor(color)
    local status_ok, _ = pcall(vim.cmd, "colorscheme " .. color)
    if not status_ok then
        vim.notify("colorscheme" .. color .. " not found!")
        return
    end
    vim.notify("Theme set to " .. color)
end



color_idx = 1

-- ADD THEMES HERE --- 
colors = {
    "gruvbox",
    "nightfox",
    "nordfox",
    "duskfox",
}

num_colors = #(colors)

-- toggle thru install color schemes
vim.keymap.set("n", "<C-q>", function()  
    color_idx = color_idx + 1 
    if color_idx > num_colors then
        color_idx = 1
    end
    new_color = colors[color_idx]
    setColor(new_color)
    end
)

