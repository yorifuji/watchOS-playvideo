//
//  InterfaceController.swift
//  watchOS-playvideo WatchKit Extension
//
//  Created by yorifuji on 2020/05/24.
//  Copyright © 2020 yorifuji. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var movie: WKInterfaceMovie!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // set poster image from asset.
        movie.setPosterImage(WKImage(imageName: "poster"))

        // get video file url from outside of an asset catalog.
        let path = Bundle.main.path(forResource: "sample", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)

        // set movie url
        movie.setMovieURL(url)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
