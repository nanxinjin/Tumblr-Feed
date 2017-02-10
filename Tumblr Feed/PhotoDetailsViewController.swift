//
//  PhotoDetailsViewController.swift
//  Tumblr Feed
//
//  Created by Nanxin Jin on 2/9/17.
//  Copyright © 2017 jinn. All rights reserved.
//

import UIKit
import AFNetworking

class PhotoDetailsViewController: UIViewController {

    
    @IBOutlet weak var photoView: UIImageView!
    var post: NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let photos = post?.value(forKeyPath: "photos") as! [NSDictionary]
        let imageUrlString = photos[0].value(forKeyPath: "original_size.url") as? String
        
        if let imageUrlString = imageUrlString {
            let imageUrl = URL(string: imageUrlString)
            photoView.setImageWith(imageUrl!)
        } else {
            //nothing
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
