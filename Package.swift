import PackageDescription

let package = Package(
  name: "Argo",
  dependencies: [
    .Package(url: "https://github.com/thoughtbot/Runes.git", majorVersion: 4),
    .Package(url: "https://github.com/thoughtbot/Curry.git", majorVersion: 4)
  ]
)
