//
//  MovieDetailsViewController.swift
//  MovieTicketBookingApp
//
//  Created by Lê Đình Linh on 11/08/2023.
//

import UIKit
import AVKit
import AVFoundation
import Kingfisher


class MovieDetailsViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageStar5: UIImageView!
    @IBOutlet weak var imageStar4: UIImageView!
    @IBOutlet weak var imageStar3: UIImageView!
    @IBOutlet weak var imageStar2: UIImageView!
    @IBOutlet weak var imageStar1: UIImageView!
    @IBOutlet weak var lblOld: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblStar: UILabel!
    @IBOutlet weak var lblFrameStar: UILabel!
    @IBOutlet weak var lblFrameOld: UILabel!
    @IBOutlet weak var lblFrameTime: UILabel!
    @IBOutlet weak var lblNameMovie: UILabel!
    @IBOutlet weak var lblPH: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var lblWritter: UILabel!
    @IBOutlet weak var lblDirector: UILabel!
    @IBOutlet weak var btnOrder: UIButton!
    @IBOutlet weak var lblSinopsis: UILabel!
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var imageReview: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var playerController: AVPlayerViewController!
    let apiHandler = APIHander()
    var itemMovie: Item?
    private var listItem: [MoviesResponseModel] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageStar1.image = UIImage(named: "empty")
        imageStar2.image = UIImage(named: "empty")
        imageStar3.image = UIImage(named: "empty")
        imageStar4.image = UIImage(named: "empty")
        imageStar5.image = UIImage(named: "empty")
        imageMovie.layer.cornerRadius = 20
        btnOrder.layer.cornerRadius = 10
        lblFrameOld.layer.cornerRadius = 10
        lblFrameOld.layer.borderColor = UIColor.white.cgColor
        lblFrameOld.layer.borderWidth = 2.0
        lblFrameTime.layer.cornerRadius = 10
        lblFrameTime.layer.borderColor = UIColor.white.cgColor
        lblFrameTime.layer.borderWidth = 2.0
        lblFrameStar.layer.cornerRadius = 10
        lblFrameStar.layer.borderColor = UIColor.white.cgColor
        lblFrameStar.layer.borderWidth = 2.0
        let path: String = Bundle.main.path(forResource: "7673103127035251441", ofType: "mp4")!
        let url: URL = URL(fileURLWithPath: path)
        playerController = AVPlayerViewController()
        playerController.player = AVPlayer(url: url)
//        playerController.view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height/3)
//                view.addSubview(playerController.view)
        
        
//        starRating(movies: movies)
      callAPIgetMovies()
        
    }
    func callAPIgetMovies() {
            apiHandler.getMovies { moviesResponse in
                self.listItem = moviesResponse
                
            }
        }
        
        @IBAction func btnPlayVideo(_ sender: Any) {
            present(playerController, animated: true) {
                self.playerController.player?.play()
            }
        }
        
    
    }
