--         ___           ___
--        /\  \         /\__\
--       |::\  \       /:/  /
--       |:|:\  \     /:/  /
--     __|:|\:\  \   /:/  /  ___
--    /::::|_\:\__\ /:/__/  /\__\
--    \:\~~\  \/__/ \:\  \ /:/  /
--     \:\  \        \:\  /:/  /
--      \:\  \        \:\/:/  /
--       \:\__\        \::/  /
--        \/__/         \/__/
--
-- Colorscheme name:        tressty.nvim
-- Description:             Colorscheme for NeoVim based on the tressty pallete
-- Author:                  Marko Cerovac <marko.cerovac16@gmail.com>
-- Website:                 https://github.com/marko-cerovac/tressty.nvim

-- Load the theme with user configuration
local setup = function (options)
	require('tressty.config').setup(options)
end

return { setup = setup }
