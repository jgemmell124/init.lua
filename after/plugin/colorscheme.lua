
-- COLOR SCHEMES
require('rose-pine').setup({
    disable_background = false
})
-- Lua
require('onedark').setup {
    style = 'warmer'
}

--Lua:
vim.g.material_style = "darker"

local function setColor(color)
    local status_ok, _ = pcall(vim.cmd, "colorscheme " .. color)
    if not status_ok then
        vim.notify("colorscheme" .. color .. " not found!")
        return
    end
    -- Remove background color
    require('gitsigns').setup()
    vim.cmd("highlight GitSignsAdd guibg=NONE")
    vim.cmd("highlight GitSignsChange guibg=NONE")
    vim.cmd("highlight GitSignsDelete guibg=NONE")
    vim.notify("Theme set to " .. color)
end

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

local color_idx = 1

--[[ ColorMyPencils() ]]

--let g:gruvbox_italic=1
vim.g.gruvbox_italic=1

--[[ -- ADD THEMES HERE ---  ]]
--[[ local default_color = "onedark" ]]
--[[ local colors = { ]]
--[[     "gruvbox", ]]
--[[     "codedark", ]]
--[[     "rose-pine", ]]
--[[     "nightfox", ]]
--[[     "nordfox", ]]
--[[     "material", ]]
--[[     "onedark", ]]
--[[ } ]]

--[[ local num_colors = #(colors) ]]

--[[ -- toggle thru install color schemes
vim.keymap.set("n", "<C-q>", function()
    color_idx = color_idx + 1
    if color_idx > num_colors then
        color_idx = 1
    end
    local new_color = colors[color_idx]
    setColor(new_color)
    -- ColorMyPencils(new_color)
    end
) ]]

-- vim.cmd.colorscheme(default_color)
-- Remove background color
-- require('gitsigns').setup()
--[[ vim.cmd("highlight GitSignsAdd guibg=none") ]]
--[[ vim.cmd("highlight GitSignsChange guibg=none") ]]
--[[ vim.cmd("highlight GitSignsDelete guibg=none") ]]
