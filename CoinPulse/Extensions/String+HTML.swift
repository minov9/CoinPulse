//
//  String+HTML.swift
//  CoinPulse
//
//  Created by Mino on 06.04.2024.
//

import Foundation

extension String {
    var removingHTMLOccurrences: String {
        replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
    }
}
