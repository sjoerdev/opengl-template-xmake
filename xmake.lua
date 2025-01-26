-- package options
local imgui_options =
{
    configs =
    {
        opengl3 = true,
        glfw = true
    }
}

-- dependencies
add_requires("glm")
add_requires("glfw")
add_requires("glad")
add_requires("imgui", imgui_options)

-- update vscode intellisense
add_rules("plugin.compile_commands.autoupdate", { outputdir = ".vscode" })

-- project
target("project")

    -- settings
    set_kind("binary")
    set_languages("c++17")

    -- sources
    add_files("src/*.cpp")

    -- linking
    add_packages("glfw", "glad", "imgui", "glm")