//
//  EventTableViewController.swift
//  Quiz2Calendar1
//
//  Created by jchen on 10/26/15.
//  Copyright © 2015 jchen. All rights reserved.
//


import UIKit

class EventTableViewController: UITableViewController {
    
    var events = [Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rows = events.count
        return rows
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("EventTableViewCell", forIndexPath: indexPath) as! EventTableViewCell
        let event = events[indexPath.row]
        
        // Configure the cell...
        cell.eventName.text = event.name
        cell.eventDate.text = event.date
        cell.eventContent.text = event.content
        
        return cell
    }
    
    
    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            //indexPath.row gets the index of the object in the events array?? Idk how it does it, but it does
            events.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    @IBAction func unwindSaveEvent (sender: UIStoryboardSegue) {
        if let sourceViewController = sender.sourceViewController as? DisplayViewController, newEvent = sourceViewController.newEvent {
            let newIndexPath = NSIndexPath(forRow: events.count, inSection: 0)
            events.append(newEvent)
            tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Automatic)
            
        }
        
    }
}
