require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = {
            config = {
                workspaces = {
                    work = "~/notes/work",
                    home = "~/notes/home",
                    programming = "~/notes/Programming",
                    os = "~/notes/os",
                    games = "~/notes/Games",
                    devops = "~/notes/DevOps",
                    cybersecurity = "~/notes/cybersecurity",
                    hardware = "~/notes/Hardware",
                    physics = "~/notes/Physics",
                }
            }
        }
    }
}
