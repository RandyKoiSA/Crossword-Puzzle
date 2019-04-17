//
//  MenuController.swift
//  Crossword
//
//  Created by Randy Le on 4/13/19.
//  Copyright © 2019 Project Koisa. All rights reserved.
//

import UIKit

class MenuController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackGroundImage()
        configurePlayButton()
        configureTitleLabel()
    }
    
    func configureTitleLabel(){
        titleLabel.backgroundColor = UIColor(red: 104/255, green: 118/255, blue: 129/255, alpha: 0.7)
    }
    
    func configurePlayButton(){
        playButton.backgroundColor = UIColor(red: 104/255, green: 118/255, blue: 129/255, alpha: 0.7)
    }
    
    func setBackGroundImage(){
        let background = UIImage(named: "background")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
}
