//
//  ViewController.swift
//  CoreDataNote
//
//  Created by iStudents on 3/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDataSource {
    
    var items = [NSManagedObject]()

    @IBAction func addItem(sender: AnyObject) {
        var alert = UIAlertController(title: "New item", message: "Add a new item", preferredStyle: .Alert)
        let saveAction = UIAlertAction(title: "Save", style: .Default){(action:UIAlertAction!) -> Void in
            let textField = alert.textFields![0] as UITextField
            //self.items.append(textField.text)
            self.saveName(textField.text)
            self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default){(action: UIAlertAction!) -> Void in
        }
        alert.addTextFieldWithConfigurationHandler{(textField:UITextField!) -> Void in
        }
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    @IBOutlet weak var tableView: UITableView!

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        let item = items[indexPath.row]
        //cell.textLabel!.text = items[indexPath.row]
        cell.textLabel!.text = item.valueForKey("name") as String?
        return cell
    }

    func saveName(name: String){
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        //2
        let entity = NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        //3
        item.setValue(name, forKey:"name")
        //4
        var error: NSError?
        if !managedContext.save(&error){
            println("Could not save \(error), \(error?.userInfo)")
        }
        //5
        items.append(item)
    }
        override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        //2
        let fetchRequest = NSFetchRequest(entityName: "Item")
        //3
        var error:  NSError?
        
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
        if let results = fetchedResults {
            items = results
        }else{
            println("Could not fetch \(error), \(error!.userInfo)")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "\"Shopping List\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        title = "\"Shopping List\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }


}

