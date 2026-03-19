//
//  PortfolioDataServiceProtocol.swift
//  CoinPulse
//
//  Created by Mino on 25.07.2024.
//

import Combine

protocol PortfolioDataServiceProtocol {
    var savedEntitiesPublisher: Published<[Portfolio]>.Publisher { get }
    func updatePortfolio(coin: Coin, amount: Double)
    func getPortfolio()
}
