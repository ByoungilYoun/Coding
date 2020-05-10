//
//  ViewController.swift
//  UserDefault-datePicker
//
//  Created by 윤병일 on 2020/05/10.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private struct Key {
        static let today = "Today"
        static let alarmOn = "AlarmOn"
    }

    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var alertSwitch: UISwitch!
    
    @IBAction func saveData(_ sender: UIButton) {
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(datePicker.date , forKey : Key.today)
        userDefaults.set(alertSwitch.isOn, forKey: Key.alarmOn)
        
        
    }
    

    @IBAction func loadData(_ sender: UIButton) {
        let userDefaults = UserDefaults.standard
        
        let today = (userDefaults.object(forKey: Key.today) as? Date) ?? Date()
        let isAlarmOn = userDefaults.bool(forKey: Key.alarmOn)
        
        datePicker.setDate(today, animated: true)
        alertSwitch.setOn(isAlarmOn, animated: true)
    }
    
    
    

}

