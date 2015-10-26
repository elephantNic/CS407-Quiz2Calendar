//
//  DisplayViewController.swift
//  Quiz2Calendar1
//
//  Created by jchen on 10/26/15.
//  Copyright © 2015 jchen. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController , UITextFieldDelegate, UINavigationControllerDelegate{
    //MARK: Properties
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var saveEvent: UIBarButtonItem!
    @IBOutlet weak var text: UITextField!
    
    
    @IBOutlet weak var text1: UITextField!
 
    @IBAction func cancelEvent(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
   
    
    
    
    var newEvent: Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveEvent === sender {
            let eventName = text.text ?? ""
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "dd-MM-yyyy, HH:mm"
            let myDate = dateFormatter.stringFromDate(datePicker.date)
            let mycontent = text1.text ?? ""
            
            newEvent = Event(name: eventName, date: myDate, content: mycontent)
        }
    }
    
    
}