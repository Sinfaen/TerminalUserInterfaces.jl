using Documenter, TerminalUserInterfaces, DocumenterMarkdown

cp(joinpath(@__DIR__, "../README.md"), joinpath(@__DIR__, "./src/index.md"); force = true, follow_symlinks = true)

makedocs(; sitename = "TerminalUserInterfaces.jl documentation", format = Markdown())

deploydocs(;
  repo = "github.com/kdheepak/TerminalUserInterfaces.jl.git",
  deps = Deps.pip("mkdocs", "mkdocs-material", "python-markdown-math", "pygments", "pymdown-extensions"),
  make = () -> run(`mkdocs build`),
  target = "site",
)
