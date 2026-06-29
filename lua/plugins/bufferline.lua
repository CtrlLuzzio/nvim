return {
    "akinsho/bufferline.nvim", 
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
    	require("bufferline").setup{
	    options={
		offsets = {
		    {
			filetype = "netrw",
			text = "Explorer",
			text_align = "center",
			separator = true
		    }
		}
	    }
	}
    end
}
