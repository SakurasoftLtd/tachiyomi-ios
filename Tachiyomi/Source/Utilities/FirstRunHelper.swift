//
// Created by Jacob King on 01/09/2021.
//

import Foundation

class FirstRunHelper {

    private static let FIRST_RUN_FLAG_KEY = "FIRST_RUN_COMPLETED"

    @available(*, unavailable)
    init() { }

    class func isFirstRun() -> Bool {
        UserDefaults.standard.bool(forKey: FIRST_RUN_FLAG_KEY) == false
    }

    class func markFirstRunComplete() {
        UserDefaults.standard.set(true, forKey: FIRST_RUN_FLAG_KEY)
        UserDefaults.standard.synchronize()
    }
}