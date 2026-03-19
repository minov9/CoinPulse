//
//  MarketDataServiceProtocol.swift
//  CoinPulse
//
//  Created by Mino on 25.07.2024.
//

import Combine

protocol MarketDataServiceProtocol {
    var marketDataPublisher: Published<MarketData?>.Publisher { get }
    var errorPublisher: Published<NetworkError?>.Publisher { get }
    func getData()
}
