//
//  SettingsView.swift
//  CryptoApp
//
//  Created by yunus olgun on 21.01.2023.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coffeeURL = URL(string: "https://www.google.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personelURL = URL(string: "https://www.google.com")!
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.background
                    .ignoresSafeArea()
                
                List {
                    swiftulThinkingSection
                    coinGeckoSection
                    developerSection
                    applicationSection
                }
            }
            
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var swiftulThinkingSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width:100, height:100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following @SwiftulThinking course on youtube. It uses MVVM architecture, combine and coredata!")
            }
            .padding(.vertical)
            Link("Subscriber on youtube 🥳", destination: youtubeURL)
            Link("Support his coffee addiction ☕️", destination: coffeeURL)
            
        } header: {
            Text("Swiftul Thinking")
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height:100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🥳", destination: coingeckoURL)
            
        } header: {
            Text("CoinGecko")
        }
    }
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width:100, height:100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app uses SwiftUI and written in 100% swift. The projectbenefits from multi-threading, publishers/subscriebers and data persistance")
            }
            .padding(.vertical)
            Link("Visit Website 🥳", destination: personelURL)
            
        } header: {
            Text("Developer")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company website", destination: defaultURL)
            Link("Learn more", destination: defaultURL)
            
        } header: {
            Text("Application")
        }
    }
    
}
