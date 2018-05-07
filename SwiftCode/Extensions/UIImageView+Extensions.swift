//
//  UIImageView+Extensions.swift
//  SwiftCode
//
//  Created by Abdullah Alhaider on 5/7/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import UIKit

/*
 - You can use this extension to download an image or you can use popular third party libraries like :
    - https://github.com/rs/SDWebImage --> Categories for UIImageView, UIButton, MKAnnotationView and it provide asynchronous image downloader with cache support and writin by Objective-C
    - https://github.com/onevcat/Kingfisher --> also it provide image downloader with cache support and writing by Swift
*/

extension UIImageView {
    
    func downloadedFrom(url: URL, contentMode mode: UIViewContentMode) {
        contentMode = mode
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
       }.resume()
    }
    
    func downloadedFrom(link: String, contentMode: UIViewContentMode) {
        guard let url = URL(string: link) else { return }
        downloadedFrom(url: url, contentMode: contentMode)
    }
    
    /*
     - Usage:
     - imageView.downloadedFrom(link: "https://cn.pling.com/img/b/7/1/7/e105204712dfa5ed2b3f17254d561ce261fd.jpg", contentMode: .scaleAspectFill)
    */
    
    
    
}// extension end.


