//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Elizabeth Kushelevsky on 4/10/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var summaryTextView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
        summaryTextView.text = post.summary
        summaryTextView.isEditable = false
        summaryTextView.isScrollEnabled = true
        
        if let photoURLString = post.photos.first?.originalSize.url.absoluteString,
           let photoURL = URL(string: photoURLString) {
            photoView.image = nil
            Nuke.loadImage(with: photoURL, into: photoView)
        } else {
            photoView.image = nil
        }
    }
}
