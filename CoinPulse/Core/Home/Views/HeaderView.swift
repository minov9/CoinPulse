//
//  HeaderView.swift
//  CoinPulse
//
//  Created by Mino on 19.06.2024.
//

import SwiftUI

struct HeaderView: View {
    @Binding var showPortfolio: Bool

    var body: some View {
        HStack(alignment: .bottom) {
            Spacer()
            Image(.logo)
                .resizable()
                .frame(width: 40, height: 40)
            Spacer()
            Text(showPortfolio
                ? LocalizationKey.portfolio.localizedString
                : LocalizationKey.livePrices.localizedString)
                .font(.chakraPetch(.bold, size: 24))
                .tracking(4)
                .foregroundStyle(Color.theme.accent)
                .animation(.none, value: showPortfolio)
                .padding(.top)
                .frame(maxWidth: .infinity)
            Spacer()
            // 占位，保持布局平衡
            Color.clear
                .frame(width: 40, height: 40)
            Spacer()
        }
    }
}

#Preview {
    HeaderView(showPortfolio: .constant(true))
}
