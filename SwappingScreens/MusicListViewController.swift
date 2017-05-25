//
//  MusicListViewController.swift
//  SwappingScreens
//
//  Created by Liquid Workforce on 5/23/17.
//  Copyright © 2017 Liquid Workforce. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.brown
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loadThirdScreenBtnPressed(_ sender: Any) {
        let songTitle = "Angel of the morning"
        
        performSegue(withIdentifier: "PlaySongViewController", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongViewController {
            
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
    
}
