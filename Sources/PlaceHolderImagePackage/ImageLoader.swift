//
//  ImageLoader.swift
//  CoreML-SwiftUI
//
//  Created by LEE SungJae on 2019/09/22.
//  Copyright © 2019 LEE SungJae. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

@available(iOS 13.0, *)
public class ImageLoader: ObservableObject {
    public enum Category: String {
        case abstract, animals, business, cats, city, food, nightlife, fashion, people, nature, sports, technics, transport
    }

/// if you want to change Image Services.........
    
//    public enum Category: String {
//        case animals, arch, nature, people, tech   }

//    private var url = "http://placeimg.com/320/180/"
    
    @Published var downloadedImage: UIImage?
    #warning("Add imageSize init parameter : Small, Medium, Large.")
    private var url = "http://lorempixel.com/320/180/"

    
    public func load(from category: Category? = nil) {
        if let category = category {
            self.url += category.rawValue
        }
        
        guard let imageURL = URL(string: self.url) else {
            fatalError("ImageURL is not corrent!")
        }
        
        URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    self.downloadedImage = nil
                }
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedImage = UIImage(data: data)
            }
        }.resume()
    }
}
