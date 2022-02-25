//
//  MovieDetailsViewController.swift
//  Flixapp1.0
//
//  Created by Navid on 2/24/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var synopsisView: UILabel!
    @IBOutlet weak var titleView: UILabel!
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterpath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterpath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
        let backdroppath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdroppath)
        
        backdropView.af_setImage(withURL: backdropUrl!)
        
       
        
        titleView.text = movie["title"] as? String
        titleView?.sizeToFit()
        synopsisView.text = movie["overview"] as? String
        synopsisView.sizeToFit()
        

    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
