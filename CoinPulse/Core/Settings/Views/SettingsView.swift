//
//  SettingsView.swift
//  CoinPulse
//
//  Created by Mino on 20.04.2024.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage(Constants.selectedThemeKey) private var darkThemeIsOn: Bool = defaultDarkMode
    @Binding var isPresented: Bool

    private static var defaultDarkMode: Bool {
        UITraitCollection.current.userInterfaceStyle == .dark
    }

    var body: some View {
        NavigationStack {
            ZStack {
                Color.theme.background
                    .ignoresSafeArea()
                List {
                    appSection
                    themeSection
                }
                .navigationBarTitleDisplayMode(.inline)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(LocalizationKey.information.localizedString)
                        .font(.chakraPetch(.bold, size: 24))
                        .tracking(2)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isPresented = false
                    } label: {
                        SystemImage.xMark.image
                            .bold()
                    }
                }
            }
            .foregroundColor(.theme.accent)
            .preferredColorScheme(darkThemeIsOn == true ? .dark : .light)
        }
    }
}

// MARK: - UI Components

private extension SettingsView {
    var appSection: some View {
        Section {
            HStack {
                Spacer()
                VStack(alignment: .center) {
                    Image(.logo)
                        .resizable()
                        .frame(width: 120, height: 120)
                    Text(Constants.appName)
                        .font(.chakraPetch(.bold, size: 16))
                        .tracking(4)
                        .foregroundStyle(Color.launch.accent)
                    Text(LocalizationKey.appDescription.localizedString)
                        .font(.chakraPetch(.medium, size: 12))
                        .tracking(1)
                        .foregroundStyle(Color.theme.accent)
                        .padding(.top, 8)
                }
                Spacer()
            }
            .padding(.vertical)
        }
    }

    var themeSection: some View {
        Section {
            HStack {
                Toggle(isOn: $darkThemeIsOn) {
                    Text(LocalizationKey.darkTheme.localizedString)
                        .font(.chakraPetch(.bold, size: 16))
                        .tracking(1)
                }
                .padding()
                .toggleStyle(SwitchToggleStyle(tint: Color.theme.green))
            }
        } header: {
            HStack {
                Spacer()
                Text(LocalizationKey.settings.localizedString)
                    .foregroundStyle(Color.theme.accent)
                    .font(.chakraPetch(.bold, size: 24))
                    .tracking(1)
                    .padding(.bottom)
                Spacer()
            }
        }
        .textCase(.none)
    }
}

#Preview {
    SettingsView(isPresented: .constant(true))
        .preferredColorScheme(.dark)
}
