import ArgumentParser

@main
struct Example: ParsableCommand {
    static let configuration: CommandConfiguration = CommandConfiguration(
        commandName: "example",
        abstract: "This is an example command line tool using swift argument parser",
        subcommands: [Hello.self]
    )
    
    @Option(
        name: .shortAndLong,
        help: "Name of the person to be greeted."
    )
    var name: String
    
    @Flag(name: .shortAndLong, help: "Show extra logging for debugging purposes")
    var verbose: Bool = false
    
    func run() throws {
        print("Hello \(name)!")
    }
}
