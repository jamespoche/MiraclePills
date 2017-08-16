//
//  ViewController.swift
//  Miracle Pills
//
//  Created by jamespoyu on 2017/8/13.
//  Copyright © 2017年 Devslopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    let states = ["Alaska","ArKansas","Alabama","California","Maine","New York"]
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor.purple
        statePicker.dataSource = self  // means in this class of code here this section of code . When there is changing makes in the statePicker let's look to the Viewcontroller class to some protocol functions and see if they exist. so we could make some actions
        
            // Hello , StatePicker over there in your View , come talk to this Viewcontroller When ever you need a title or whenever you want to know how many rows you need or Whenever you stop scrolling.come to this Viewcontroller and we will handle for you .
        statePicker.delegate = self
        
        //Hey this Class is going to act on behalf of the statePicker and some of the things that the StatePicker wants to do
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1  // Due to 1 state
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //What happens when you select the row
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
            }
    
    
    
}

