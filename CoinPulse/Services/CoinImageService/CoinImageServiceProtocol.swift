//
//  CoinImageServiceProtocol.swift
//  CoinPulse
//
//  Created by Mino on 25.07.2024.
//

import Foundation

protocol CoinImageServiceProtocol {
    var imageDataPublisher: Published<[String: Data]>.Publisher { get }
    func getCoinImage(for: Coin)
}
