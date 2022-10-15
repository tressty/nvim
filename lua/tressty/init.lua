--
--	   ____________
--    |___________|
--         |_|   /
--         | |  /
--        /| ../
--       /.. |/
--      /  | |
--     /   |_|
--
-- Colorscheme name:        tressty.nvim
-- Description:             Colorscheme for NeoVim based on material.nvim
-- Author:                  Eduard Baturin <trardone@gmail.com>
-- Website:                 https://github.com/trard/tressty.nvim

-- Load the theme with user configuration
local setup = function (options)
	require('tressty.config').setup(options)
end

return { setup = setup }
