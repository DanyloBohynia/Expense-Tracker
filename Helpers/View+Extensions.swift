//
//  View+Extentions.swift
//  Expense Tracker
//
//  Created by danqya on 12/05/2024.
//

import SwiftUI

extension View {
    @ViewBuilder
    func hSpacing(_ aligment: Alignment = .center) -> some View {
        self
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    @ViewBuilder
    func vSpacing(_ aligment: Alignment = .center) -> some View {
        self
        .frame(maxHeight: .infinity, alignment: aligment)
    }
    
    var safeArea: UIEdgeInsets {
        if let windowScene = (UIApplication.shared.connectedScenes.first as? UIWindowScene) {
            return windowScene.keyWindow?.safeAreaInsets ?? .zero
        }
        
        return .zero
    }
}
