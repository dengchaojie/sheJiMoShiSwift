import UIKit
import Foundation

//https://mp.weixin.qq.com/s/g1QWuKltxk0TmdgIDdLs4Q
protocol MediaPlayer {
    func play(audioTyper: String, fileName: String) -> Void
    
}

protocol AdvancedMediaPlayer {
    func playVlc(fileName: String) -> Void
    
    func playMp4(fileName: String) -> Void
}

class VlcPlayer: AdvancedMediaPlayer {
    
    func playVlc(fileName: String) {
        print("playVlc \(fileName)")
    }
    
    func playMp4(fileName: String) {
        
    }
}

class Mp4Player: AdvancedMediaPlayer {
    
    func playVlc(fileName: String) {
        
    }
    
    func playMp4(fileName: String) {
        print("playMp4 \(fileName)")
    }
}

class MediaAdapter: MediaPlayer {
    let advancedMusic: AdvancedMediaPlayer
    init(audioType: String) {
        if audioType == "vlc" {
            advancedMusic = VlcPlayer.init()
        }else {
            advancedMusic = Mp4Player.init()
        }
    }
    
    func play(audioTyper: String, fileName: String) {
        if audioTyper == "vlc" {
            advancedMusic.playVlc(fileName: fileName)
            
        }else {
            advancedMusic.playMp4(fileName: fileName)
        }
    }
    
}


class AudioPlayer: MediaPlayer {
    var mediaAda: MediaAdapter?
    func play(audioTyper: String, fileName: String) {
        if audioTyper == "mp3" {
            print("play mp3")
        } else if ["vlc", "mp4"].contains(audioTyper) {
            mediaAda = MediaAdapter.init(audioType: audioTyper)
            mediaAda?.play(audioTyper: audioTyper, fileName: fileName)
        } else {
            print("invalid type")
        }
    }
}

let audioPlayer = AudioPlayer.init()
audioPlayer.play(audioTyper: "mp3", fileName: "dcj")
audioPlayer.play(audioTyper: "mp4", fileName: "dkdk")
audioPlayer.play(audioTyper: "vlc", fileName: "dkke")
audioPlayer.play(audioTyper: "avi", fileName: "ieiie")



