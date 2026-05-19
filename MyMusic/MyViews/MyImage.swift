//
//  MyImage.swift
//  MyMusic
//
//  Created by sherryfeng on 5/19/26.
//

import SwiftUI

extension Image {
    func instrumentStyle() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(width: 110, height: 110)
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white.opacity(0.65))
                    .blur(radius: 0.5)
            )
            .shadow(color: Color.blue.opacity(0.06), radius: 12, x: 0, y: 8)
    }
}
