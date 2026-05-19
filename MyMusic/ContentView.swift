//
//  ContentView.swift
//  MyMusic
//
//  Created by sherryfeng on 4/23/26.
//

import SwiftUI

struct InstrumentItem {
    let image: ImageResource
    let play: () -> Void
}

struct ContentView: View {
    let soundPlayer = SoundPlayer()
    @State private var count = 0

    var instruments: [InstrumentItem] {
        [
            InstrumentItem(image: .cymbal, play: soundPlayer.cymbalPlay),
            InstrumentItem(image: .guitar, play: soundPlayer.guitarPlay),
            InstrumentItem(image: .piano1, play: soundPlayer.pianoPlay),
            InstrumentItem(image: .violin, play: soundPlayer.violinPlay),
            InstrumentItem(image: .music, play: soundPlayer.musicPlay),
            InstrumentItem(image: .bongo, play: soundPlayer.cymbalPlay),
        ]
    }

    var body: some View {
        NavigationStack {
            ZStack {
                // 背景：柔和渐变 + 背景材质
                LinearGradient(colors: [Color.yellow.opacity(0.25), Color.purple.opacity(0.25)],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                VStack {
                    Spacer()
                    VStack {
                        ForEach(0..<3, id: \.self) { row in
                            HStack {
                                ForEach(0..<2, id: \.self) { column in
                                    let index = row * 2 + column
                                    if index < instruments.count {
                                        let item = instruments[index]
                                        Button {
                                            count += 1
                                            item.play()
                                        } label: {
                                            Image(item.image)
                                                .instrumentStyle()
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding()

                    Spacer()
                    VStack {
                        Text("鳴らした回数：\(count)")
                            .foregroundStyle(Color.color)
                            .font(.title2)
                        Button {
                            count = 0
                        } label: {
                            Text("リセット")
                                .frame(maxWidth: .infinity)
                                .frame(height: 88)
                                .font(.title2.bold())
                        }
                        .background(Color.bg)
                        .foregroundStyle(Color.color)
                    }
                }
            }
            .navigationTitle("26CM0128 封怡璇")
        }
    }
}

#Preview {
    ContentView()
}
