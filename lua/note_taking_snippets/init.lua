local setup = function()
	local setup_autocmd = function(filetype)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { filetype },
			callback = function()
				local config = require("note_taking_snippets.snippets." .. filetype)
				print(config.snippets)
				require("note_taking_snippets.loader").setup(config.InMath, config.snippets, filetype)
			end,
		})
	end
	setup_autocmd("typst")
	setup_autocmd("tex")
end

return {
	setup = setup,
}
