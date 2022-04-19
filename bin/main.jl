# Genie Hello World!
# As simple as Hello
using Genie
route("/hello") do
    "Welcome to Genie!"
end

# Powerful high-performance HTML view templates
using Genie.Renderer.Html
route("/html") do
    h1("Welcome to Genie!") |> html
end

# JSON rendering built in
using Genie.Renderer.Json
route("/json") do
    (:greeting => "Welcome to Genie!") |> json
end

# Start the app!
up(8888, "0.0.0.0", async = false, verbose = true)
