//
//  ViewController.swift
//  testA
//
//  Created by Antonio on 13/12/18.
//  Copyright © 2018 Antonio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
        @IBOutlet weak var txtDatePicker: UITextField!
    
        @IBOutlet weak var stxtDatePicker: UITextField!
    
    
    @IBOutlet weak var utxtDatePicker: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let datePicker = UIDatePicker()
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            showDatePicker()
            sshowDatePicker()
            ushowDatePicker()
            
            //txtDatePicker.layer.cornerRadius = 13
            //txtDatePicker.clipsToBounds = true
            //txtDatePicker.layer.borderWidth = 1
            //txtDatePicker.layer.borderColor = UIColor.gray.cgColor
            //txtDatePicker.layer.backgroundColor = UIColor.gray.cgColor
            
            
            
            
            
            //let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            //backgroundImage.image = UIImage(named: "Alma")
            //backgroundImage.contentMode = UIViewContentMode.scaleToFill
            //self.view.insertSubview(backgroundImage, at: 0)
       
            
            
        }
        
        
        func showDatePicker(){
            //Formate Date
            datePicker.datePickerMode = .time
            datePicker.locale = Locale(identifier: "it_IT")
            
            //ToolBar
            let toolbar = UIToolbar();
            toolbar.sizeToFit()
            
            let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
            let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
            let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
            
            toolbar.setItems([cancelButton,spaceButton,doneButton], animated: false)
            
            txtDatePicker.inputAccessoryView = toolbar
            txtDatePicker.inputView = datePicker
            
        }
    
        @objc func donedatePicker(){
            
            let formatter = DateFormatter()
            formatter.dateFormat = "hh:mm"
            txtDatePicker.text = formatter.string(from: datePicker.date)
            self.view.endEditing(true)
        }
        
        @objc func cancelDatePicker(){
            self.view.endEditing(true)
        }
    
    
    
    
    func sshowDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .time
        datePicker.locale = Locale(identifier: "it_IT")
        
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let sspaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let scancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(scancelDatePicker));
        let sdoneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(sdonedatePicker));
        
        toolbar.setItems([scancelButton,sspaceButton,sdoneButton], animated: false)
        
        stxtDatePicker.inputAccessoryView = toolbar
        stxtDatePicker.inputView = datePicker
        
    }
    
    @objc func sdonedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm"
        stxtDatePicker.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func scancelDatePicker(){
        self.view.endEditing(true)
    }
    
    func ushowDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .time
        datePicker.locale = Locale(identifier: "it_IT")
        
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let uspaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let ucancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(ucancelDatePicker));
        let udoneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(udonedatePicker));
        
        toolbar.setItems([ucancelButton,uspaceButton,udoneButton], animated: false)
        
        utxtDatePicker.inputAccessoryView = toolbar
        utxtDatePicker.inputView = datePicker
        
    }
    
    @objc func udonedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm"
        utxtDatePicker.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func ucancelDatePicker(){
        self.view.endEditing(true)
    }
}
