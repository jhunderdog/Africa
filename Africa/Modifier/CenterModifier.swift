//
//  CenterModifier.swift
//  Africa
//
//  Created by jhunderdog on 2022/01/30.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
