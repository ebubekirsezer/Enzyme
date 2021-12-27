//
//  ViewController.swift
//  SampleEnzymeApp
//
//  Created by Ebubekir Sezer on 25.12.2021.
//

import UIKit
import Enzyme

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let stringDate = "2021-12-24"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: stringDate)
        
        print("Is today: \(date?.isToday() ?? false)")
        print("Is yesterday: \(date?.isYesterday() ?? false)")
    }


}

