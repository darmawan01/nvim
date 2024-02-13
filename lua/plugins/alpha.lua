return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[

███████╗██████╗           ██████╗  ██╗
╚══███╔╝██╔══██╗         ██╔═████╗███║
  ███╔╝ ██║  ██║         ██║██╔██║╚██║
 ███╔╝  ██║  ██║         ████╔╝██║ ██║
███████╗██████╔╝██╗██╗██╗╚██████╔╝ ██║
╚══════╝╚═════╝ ╚═╝╚═╝╚═╝ ╚═════╝  ╚═╝
                                      

            [ @darmawan01 ]
    ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}
