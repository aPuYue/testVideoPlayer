//
//  ViewController.swift
//  testVideoPlayer
//
//  Created by user on 2022/03/25.
//

import UIKit
//import AVFoundation
import AVKit
//import AVPlayerViewController
import WebKit
//import MediaPlayer

class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        player1WebKit()
//        player2()//废弃
        player3AVKit()
    }
    
//    func player1WebKit() {// import WebKit
//        //最基本的，只能全屏，网页版油管全屏用的就是这个
//        //有
//        let videoUrl = "https://quipper.github.io/native-technical-exam/videos/sakata.mp4"
//        let htmlString = "<video id='video' width='300' height='200' src='\(videoUrl)' controls autoplay></video>"
//        webview.loadHTMLString(htmlString, baseURL: nil)
//    }
    
//    func player2() { // import MediaPlayer
//        //MPMoviePlayerController 在ios9以后被废弃 这个方法不能用了
//        let url = URL(string: "https://quipper.github.io/native-technical-exam/videos/sakata.mp4")
//        var player = MPMoviePlayerController(contentURL: url)!
//        player.controlStyle = .default
//        player.scalingMode = .aspectFit
//        player.shouldAutoplay = false
//        player.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        player.view.autoresizesSubviews = true
//        player.view.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 300)
//        player.prepareToPlay()
//        view.addSubview(player.view)
//    }
    
    func player3AVKit() {//import AVKit
        guard let url = URL(string: "https://quipper.github.io/native-technical-exam/videos/okamoto.mp4") else { return }
        let avPlayer: AVPlayer = AVPlayer(url: url)
        let controller = AVPlayerViewController()
        controller.player = avPlayer
        controller.view.frame = CGRect(x: view.safeAreaInsets.left, y: view.safeAreaInsets.top, width: view.bounds.size.width, height: 300)//一旦横屏位置就会出问题
        addChild(controller) // 最大画面になった時、これが使用される感じ
        view.addSubview(controller.view)
        avPlayer.play() //再生
    }


}

