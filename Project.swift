import ProjectDescription

// MARK: - Project

let project = Project(name: "BankKata",
                      organizationName: "com.cokaido",
                      packages: [
                        .package(url: "https://github.com/SwifterSwift/SwifterSwift.git", .upToNextMinor(from: Version(5, 2, 0)))
                      ],
                      targets: [
                        Target(name: "BankKataApp",
                               platform: .iOS,
                               product: .app,
                               productName: "BankKataApp",
                               bundleId: "com.cokaido.bankkata",
                               deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
                               infoPlist: .default,
                               sources: "Targets/BankKata/Sources/**/*.swift",
                               dependencies: [
                                .target(name: "BankKataKit"),
                                .target(name: "BankKataUI"),
                               ]),
                        Target(name: "BankKataAppTests",
                               platform: .iOS,
                               product: .unitTests,
                               productName: "BankKataAppTests",
                               bundleId: "com.cokaido.bankkata",
                               deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
                               infoPlist: .default,
                               sources: "Targets/BankKata/Tests/**/*.swift",
                               dependencies: [
                                .target(name: "BankKataApp"),
                               ]),
                         Target(name: "BankKataKit",
                               platform: .iOS,
                               product: .framework,
                               productName: "BankKataKit",
                               bundleId: "com.cokaido.bankkatakit",
                               deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
                               infoPlist: .default,
                               sources: "Targets/BankKataKit/Sources/**/*.swift",
                               dependencies: [
                                .package(product: "SwifterSwift")
                               ]),
                        Target(name: "BankKataKitTests",
                              platform: .iOS,
                              product: .unitTests,
                              productName: "BankKataKitTests",
                              bundleId: "com.cokaido.bankkatakit",
                              deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
                              infoPlist: .default,
                              sources: "Targets/BankKataKit/Tests/**/*.swift",
                              dependencies: [
                                .target(name: "BankKataKit")
                              ]),
                        Target(name: "BankKataUI",
                              platform: .iOS,
                              product: .framework,
                              productName: "BankKataUI",
                              bundleId: "com.cokaido.bankkataui",
                              deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
                              infoPlist: .default,
                              sources: "Targets/BankKataUI/Sources/**/*.swift",
                              dependencies: [
                                .package(product: "SwifterSwift"),
                                .target(name: "BankKataKit")
                              ]),
                      ],
                      schemes: [
                        Scheme(name: "BankKataApp",
                               shared: true,
                               buildAction: BuildAction(targets: ["BankKataApp"]),
                               testAction: TestAction(targets: ["BankKataAppTests"]),
                               runAction: RunAction(executable: "BankKataApp")),
                        Scheme(name: "BankKataKit",
                               shared: true,
                               buildAction: BuildAction(targets: ["BankKataKit"]),
                               testAction: TestAction(targets: ["BankKataKitTests"])),
                      ],
                      additionalFiles: [])
