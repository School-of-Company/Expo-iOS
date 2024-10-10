import ProjectDescription
import EnvironmentPlugin

// WorkSpace
let workspace = Workspace(
    name: env.name,
    projects: [
        "Projects/App",
        "Projects/Service"
    ]
)
