//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by sherryfeng on 4/23/26.
//

import AVFoundation
import UIKit

class SoundPlayer: NSObject {
    // 音源データ - NSDataAsset　という　クラス　は　プロジェクトのAssets.xcassets　という　フォルダの中に　ある　データ　を　取り出す　ために使います
    // "cymbalSound" あるいは　"guitarSound"　こう言った　文字は　書類のファイル名です、ここでは　音声文書の名前です
    private let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    private let guitarData = NSDataAsset(name: "guitarSound")!.data
    private let pianoData = NSDataAsset(name: "pianoSound")!.data
    private let violinData = NSDataAsset(name: "violinSound")!.data
    private let musicData = NSDataAsset(name: "musicSound")!.data

    /// AVAudioPlayer　は　音声の流れを指示するだけです。video だめです
    /// ここは　cymbalPlayer　という　変数を　宣言してあります。
    var player: AVAudioPlayer!

    func cymbalPlay() {
        do {
            try player = AVAudioPlayer(data: cymbalData)
            player.play()
        } catch {
            print("エラーが発生しました")
        }
    }

    func guitarPlay() {
        do {
            try player = AVAudioPlayer(data: guitarData)
            player.play()
        } catch {
            print("エラーが発生しました")
        }
    }

    func pianoPlay() {
        do {
            try player = AVAudioPlayer(data: pianoData)
            player.play()
        } catch {
            print("エラーが発生しました")
        }
    }

    func violinPlay() {
        do {
            try player = AVAudioPlayer(data: violinData)
            player.play()
        } catch {
            print("エラーが発生しました")
        }
    }
    
    func musicPlay() {
        do {
            try player = AVAudioPlayer(data: musicData)
            player.play()
        } catch {
            print("エラーが発生しました")
        }
    }
    
}
