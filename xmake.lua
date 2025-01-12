-- dependencies
add_requires("glfw")
add_requires("glad", { configs = { api = "gl=3.3", profile = "core", spec = "gl"} })
add_requires("imgui", { configs = { opengl3 = true, glfw = true } })

-- project
target("project")

    -- settings
    set_kind("binary")
    set_languages("c++17")

    -- sources
    add_files("src/*.cpp")

    -- linking
    add_packages("glfw", "glad", "imgui")