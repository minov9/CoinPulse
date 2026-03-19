//
//  CoinDataServiceProtocol.swift
//  CoinPulse
//
//  Created by Mino on 25.07.2024.
//

import Combine

protocol CoinDataServiceProtocol {
    var allCoinsPublisher: Published<[Coin]>.Publisher { get }
    var errorPublisher: Published<NetworkError?>.Publisher { get }
    func getCoins()
}
