//
//  ViewController.swift
//  multihreading(ankita)
//
//  Created by Student P_08 on 16/10/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var imageview: UIImageView!
    @IBAction func press(_ sender: UIButton) {
        let queue2 = DispatchQueue.global(qos: .userInteractive)
        queue2.async {
            self.downLoadFromWeb2()}
        
    }
    func downLoadFromWeb()
    {
        let str = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8zkYTuz1pPVjAK-KMhT__jENDVJl1J8Pvc8wqD9TdINmZ6J8x"
        let url = URL(string: str)!
        let session = URLSession(configuration: .default)
        let dataTask = session.dataTask(with: url) { (data, response, error) in
            
            if(data != nil)
            {
                let image = UIImage(data: data!)
                DispatchQueue.main.async {
                    self.imageview.image = image
                }
            }
            
        }
        dataTask.resume()
        
        
        
    }
    func downLoadFromWeb2()
    {
        let str = "https://s-media-cache-ak0.pinimg.com/736x/cf/0c/4a/cf0c4ad4e44827dabd080b9ed7312d8d.jpg"
        let url = URL(string: str)!
        let session = URLSession(configuration: .default)
        let dataTask = session.dataTask(with: url) { (data, response, error) in
            
            if(data != nil)
            {
                let image = UIImage(data: data!)
                DispatchQueue.main.async {
                    self.imageview.image = image
                }
            }
            
        }
        dataTask.resume()
        
        
        
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
