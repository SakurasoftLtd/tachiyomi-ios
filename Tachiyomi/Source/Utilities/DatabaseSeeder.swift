//
// Created by Jacob King on 01/09/2021.
//

import Foundation

class DatabaseSeeder {

    @available(*, unavailable)
    init() { }

    class func seedLocalSource() {
        let storageDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.absoluteString.appending("/localstorage")

        let localSource = Source()
        localSource.name = "Local Storage"
        localSource.rootDirectoryUri = storageDir
        localSource.language = "English"
        localSource.commit()
    }
}