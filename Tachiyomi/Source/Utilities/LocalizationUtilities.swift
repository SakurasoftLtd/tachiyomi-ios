//
//  LocalizationUtilities.swift
//  Tachiyomi
//
//  Created by Jacob King on 31/08/2021.
//

import Foundation

extension String {
    var localizedValue: String {
        return NSLocalizedString(self, comment: "")
    }
}
