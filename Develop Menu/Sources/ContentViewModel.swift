//
//  ContentViewModel.swift
//  Develop Menu
//
//  Created by Watanabe Toshinori on 2022/01/08.
//

import UIKit

class ContentViewModel: ObservableObject {
    enum Action {
        case openSettings
    }

    func send(_ action: Action) {
        switch action {
        case .openSettings:
            guard let url = URL(string: UIApplication.openSettingsURLString) else {
                return
            }
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}
