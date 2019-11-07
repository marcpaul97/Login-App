//
//  ViewController.swift
//  JSONTest
//
//  Created by Mike C on 10/31/19.
//  Copyright © 2019 Mike C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        Network.downloadClubMemberProfile { jsonData in
            guard let jData = jsonData else{ return }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: jData, options: []) as? [String: Any] {
                    if let first = json["FirstName"] as? String {
                        print(first)
                    }
                    if let last = json["LastName"] as? String {
                        print(last)
                    }
                    if let id = json["IDNumber"] as? Int {
                        print(id)
                    }
                    
                    
               }
                
            }catch let error {
                print(error.localizedDescription)
            }
        }
     }
  }

