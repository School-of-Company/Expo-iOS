import ConfigurationPlugin
import DependencyPlugin
import EnvironmentPlugin
import Foundation
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Domain.Domain.rawValue,
    targets: [
        .implements(module: .domain(.Domain), dependencies: [
            .shared(target: .GlobalThirdPartyLibrary)
        ])
    ]
)
