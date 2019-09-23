////
////  FluidMechanicsProgrammaticallyTableViewController.swift
////  CHE Equations
////
////  Created by Anthony on 1/10/18.
////  Copyright © 2018 CHE Equations. All rights reserved.
////
//
//import UIKit
//
//class FluidMechanicsProgrammaticallyTableViewController: UITableViewController {
//
//
//
//
////        let sectionTitle = ["Diameter (Laminar)", "Diameter (Turbulent)", "Frictional Dissipation", "Friction Factor (Laminar)", "Friction Factor (Turbulent)", "Head Loss", "Length (Hydrodynamic Entry)", "Pressure Drop (Laminar)", "Pressure Drop (Turbulent)", "Velocity (Compressible Gas)", "Velocity (Laminar)", "Volumetric Flow Rate (Laminar)", "Volumetric Flow Rate (Turbulent)", "Reynolds Number","Shear Stress"]
////
////        let items = [["Hagen-Poiseuille"],["Tosun & Aksahin"],["Frictional Dissipation"],["Fanning","Darcy (Moody)"],["Olujíc & Shacham (Modified Colebrook & White)"],["Darcy–Weisbach (Laminar|Turbulent)","Swamee and Jain (Turbulent)"],["Laminar or Turbulent"],["Hagen-Poiseuille"],["Gregory and Fogarasi (Chen)"],["Weymouth"],["Torricelli","Theoretical (At Any Point in Cross-Section)","Maximum"],["Hagen-Poiseuille"],["Gregory and Fogarasi (Chen)"],["Reynolds"],["Theoretical (At Any Point in Cross-Section)","Maximum (Fanning)","Maximum (Darcy-Weisbach)"]]
////
////
////
//
//
//
//
//
//
//    /////////////=======================================
////    override func viewDidLoad() {
////        super.viewDidLoad()
////
////        // Uncomment the following line to preserve selection between presentations
////        // self.clearsSelectionOnViewWillAppear = false
////
////        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
////        // self.navigationItem.rightBarButtonItem = self.editButtonItem
////    }
//    // MARK: - Table view data source
////
//
////    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        // #warning Incomplete implementation, return the number of rows
////
////        return self.items;\[section,\];.count
////
////    }
//
////    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
////        // #warning Incomplete implementation, return the number of sections
////
//    //        ret    let sectionTitle = ["Overdue", "Due in next 7 days", "Due in future"]
//
// //   var items: [Array<String>] = [[], [], []]
//    ///////////////////////////////
////    let section = ["pizza", "deep dish pizza", "calzone"]
////
////    let items = [["Margarita", "BBQ Chicken", "Peproni"], ["sausage", "meat lovers", "veggie lovers"], ["sausage", "chicken pesto", "prawns & mashrooms"]]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
//
//        tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
//    }
//
//
//
//
//    // MARK: - Table view data source
//
////
////    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        // #warning Incomplete implementation, return the number of rows
////        return items[section].count
////    }
////
//
//
//
//    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 40
//    }
//
//
//
//
//
//
// /////////////////////////////////
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    // MARK: - Table view data source
//
//  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return self.sectionTitle[section]
//    }
//
//   func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return sectionTitle.count
//    }
//
//
//
//  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath as IndexPath)
//
//        // Configure the cell...
//
//        cell.textLabel?.text = items[indexPath.section][indexPath.row]
//
//        return cell
//    }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//    ///////////====================================================
//
//
//////
////    override func numberOfSections(in tableView: UITableView) -> Int {
////       return self.section.count
////    }
//////
////    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//////         return self.items;\[section,\];.count
////       // return self.items.count
////        return items[section].count
////    }
////
////
////    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath as IndexPath)
////
////        // Configure the cell...
////
////        cell.textLabel?.text = self.items[indexPath.section][indexPath.row]
////
////        return cell
////    }
//
//
//
//
//
//
//
//
//
//
//    /*
//    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    */
//
//    /*
//    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
//    }
//    */
//
//    /*
//    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
//    */
//
//    /*
//    // Override to support conditional rearranging of the table view.
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
//    */
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
