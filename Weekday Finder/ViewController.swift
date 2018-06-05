//
//  ViewController.swift
//  Weekday Finder
//
//  Created by Елена Позднякова on 01.06.2018.
//  Copyright © 2018 swiftbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    @IBAction func findDay() {
        let calendar = Calendar.current
        
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text
            else { return }
        
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekday = dateFormatter.string(from: date)
        
        dayLabel.text = weekday
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

