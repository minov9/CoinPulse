//
//  StatisticPair.swift
//  CoinPulse
//
//  Created by Mino on 19.06.2024.
//

import Foundation

struct StatisticPair: Identifiable {
    let id = UUID()
    let top: Statistic
    let bottom: Statistic
}
