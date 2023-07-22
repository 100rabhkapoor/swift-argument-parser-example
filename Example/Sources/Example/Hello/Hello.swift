//
//  Hello.swift
//
//
//  Created by Saurabh Kapoor on 22/07/23.
//

import Foundation
import ArgumentParser

struct Hello: ParsableCommand {
    @OptionGroup
    var options: Example
    
    func run() throws {
        if options.verbose {
            print("Verbose mode is on!")
        }
        print("Hello \(options.name)")
    }
}
