//
//  PlaySongViewController.swift
//  SwappingScreens
//
//  Created by Liquid Workforce on 5/23/17.
//  Copyright © 2017 Liquid Workforce. All rights reserved.
//

import UIKit

class PlaySongViewController: UIViewController {
    
    @IBOutlet weak var lblSongTitle: UILabel!
    
    private var _selectedSong : String!
    
    var selectedSong : String {
        get {
            return _selectedSong
        }
        set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblSongTitle.text = _selectedSong
    
    }
}
