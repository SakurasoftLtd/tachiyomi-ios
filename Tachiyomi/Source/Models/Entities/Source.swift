//
// Created by Jacob King on 01/09/2021.
//

import Foundation
import SharkORM

@objcMembers class Source: SRKObject {

    dynamic var name: String!
    dynamic var artworkUri: String!
    dynamic var rootDirectoryUri: String!
    dynamic var language: String!
}