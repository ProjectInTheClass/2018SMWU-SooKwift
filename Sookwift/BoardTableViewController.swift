//
//  BoardTableViewController.swift
//  Sookwift
//
//  Created by Abraham Park on 1/23/18.
//  Copyright © 2018 ebadaq.com. All rights reserved.
//

import UIKit

class BoardTableViewController: UITableViewController {
    let modelBoard = BoardModel()
    let nf = NumberFormatter()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.tableView.reloadData()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nf.numberStyle = .decimal
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.modelBoard.arrayAritle.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! ArticleTableViewCell
        
//        cell.accessoryType = .none
        
        let article = self.modelBoard.arrayAritle[indexPath.row]

//        cell.textLabel?.text = article.title
        
        cell.labelTitle.text = article.title
        cell.labelLike.text = nf.string(from: NSNumber.init(value: article.likeCount)) //String(article.likeCount)
        cell.labelDislike.text = nf.string(from: NSNumber(value: article.dislikeCount))
        cell.labelDate.text = article.writtenDate
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.modelBoard.arrayAritle[indexPath.row].checked = !self.modelBoard.arrayAritle[indexPath.row].checked
        
        let cell = tableView.cellForRow(at: indexPath)
        
        if self.modelBoard.arrayAritle[indexPath.row].checked {
            cell?.accessoryType = .checkmark
        }
        else {
            cell?.accessoryType = .none
        }
        tableView.deselectRow(at: indexPath, animated: true)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToWrite" {
            let vcWrite = segue.destination as! WriteViewController
            
            vcWrite.modelBoard = self.modelBoard
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
