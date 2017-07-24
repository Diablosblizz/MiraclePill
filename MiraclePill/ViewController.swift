//
//  ViewController.swift
//  MiraclePill
//
//  Created by Keith Black on 2017-07-22.
//  Copyright © 2017 Keith Black. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var provincePicker: UIPickerView!
    @IBOutlet weak var provincePicketBtn: UIButton!
    
    let provinces = ["Ontario", "New Brunswick", "Manitoba", "Saskatewan", "Prince Edward Island", "Newfoundland", "Northwest Territories", "Nova Scotia", "Alberta", "Quebec"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        provincePicker.dataSource = self;
        provincePicker.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func provinceBtnPressed(_ sender: Any) {
        provincePicker.isHidden = false;
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return provinces.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return provinces[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        provincePicketBtn.setTitle(provinces[row], for: UIControlState());
        provincePicker.isHidden = true;
    }
    
}

