//
//  StandardTextFiledModifier.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 22.01.2024.
//

import Foundation
import SwiftUI

struct StandardTextFiledModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.subheadline)
        .padding(12)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.horizontal, 24)
    }
}
