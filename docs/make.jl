using Documenter, TerminalUserInterfaces

cp(joinpath(@__DIR__, "../README.md"), joinpath(@__DIR__, "./src/index.md"); force = true, follow_symlinks = true)

makedocs(; sitename = "TerminalUserInterfaces.jl documentation")

deploydocs(;
  repo = "github.com/kdheepak/TerminalUserInterfaces.jl.git",
)
