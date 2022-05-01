//
//  ViewController.swift
//  King2
//
//  Created by WEI-YI Wang on 2022/5/1.
//

import UIKit

class ViewController: UIViewController {
    let movies = ["k2","k3","k4"]
    var index = 0

    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pre(_ sender: Any) {
        index = (index + movies.count - 1) % movies.count
        print(index) //去了解下面數值如何改變
        let name = movies [index]
        imageView.image = UIImage(named: name)
    }
    
    
    
    
    
    
    @IBAction func next(_ sender: Any) {
        index = (index + 1) % movies.count
                            // 這樣就可以一直循環嚕
        print(index)
        let name = movies [index]
        imageView.image = UIImage(named: name)
        
        
        
        
    }
    
    
    
    
    


}

