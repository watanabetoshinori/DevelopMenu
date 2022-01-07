//
//  ContentView.swift
//  Develop Menu
//
//  Created by Watanabe Toshinori on 2022/01/08.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel

    var body: some View {
        VStack(spacing: 32) {
            Image(systemName: "wrench.and.screwdriver.fill")
                .foregroundColor(.accentColor)
                .font(.system(size: 60))

            Text("You can turn on Develop Menu extension in Settings.")
                .multilineTextAlignment(.center)

            Button("Open Settings") {
                viewModel.send(.openSettings)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init())
    }
}
