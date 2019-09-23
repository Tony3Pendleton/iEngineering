////
////  FluidMechanicsTableViewController.swift
////  CHE Equations
////
////  Created by Anthony on 1/7/18.
////  Copyright © 2018 CHE Equations. All rights reserved.
////
//
//import UIKit
//
//class FluidMechanicsTableViewController: UITableViewController, UISearchBarDelegate {
////    func updateSearchResults(for searchController: UISearchController) {
////        self.filtered = data.filter({ (array: String) -> Bool in
////            //
////                        if array.contains(searchController.searchBar.text!)
////                        {
////                            return true
////                        }
////                        else
////                        {
////                            return false
////                        }
////
////                    })
////
////                    self.resultController.tableView.reloadData()
////
////        }
//
////    func updateSearchResults(for searchController: UISearchController) {
////        <#code#>
////    }
//
//
////
//
//    @IBOutlet weak var tableView2: UITableView!
//    @IBOutlet weak var searchBar: UISearchBar!
//
//    var array = ["Diameter (Laminar)", "Diameter (Turbulent)", "Frictional Dissipation", "Friction Factor (Laminar)", "Friction Factor (Turbulent)", "Head Loss", "Length (Hydrodynamic Entry)", "Pressure Drop (Laminar)", "Pressure Drop (Turbulent)", "Velocity (Compressible Gas)", "Velocity (Laminar)", "Volumetric Flow Rate (Laminar)", "Volumetric Flow Rate (Turbulent)", "Reynolds Number","Shear Stress"]
//
//
//    var filteredArray = ["Diameter (Laminar)", "Diameter (Turbulent)", "Frictional Dissipation"]
//
////var filteredArray:[String] = []
// //   var array:[String] = []
//
//    var searchController = UISearchController()
//    var resultController = UITableViewController()
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
////    var data = ["Diameter (Laminar)", "Diameter (Turbulent)", "Frictional Dissipation", "Friction Factor (Laminar)", "Friction Factor (Turbulent)", "Head Loss", "Length (Hydrodynamic Entry)", "Pressure Drop (Laminar)", "Pressure Drop (Turbulent)", "Velocity (Compressible Gas)", "Velocity (Laminar)", "Volumetric Flow Rate (Laminar)", "Volumetric Flow Rate (Turbulent)", "Reynolds Number","Shear Stress"]
////    var filteredData: [String]!
////
////
////    func updateSearchResults(for searchController: UISearchController) {
////        if data.contains(searchController.searchBar.text!)
////        {
////            return true
////        }
////        else
////        {
////            return false
////        }
////    }
////
////
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        tableView.dataSource = self
////        searchBar.delegate = self
////        filteredData = data
////    }
////
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView2.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as UITableViewCell
//        cell.textLabel?.text = filteredArray[indexPath.row]
//        return cell
//    }
////
////    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        return filteredData.count
////    }
////
////    // This method updates filteredData based on the text in the Search Box
////    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
////        // When there is no text, filteredData is the same as the original data
////        // When user has entered text into the search box
////        // Use the filter method to iterate over all items in the data array
////        // For each item, return true if the item should be included and false if the
////        // item should NOT be included
////        filteredData = searchText.isEmpty ? data : data.filter { (item: String) -> Bool in
////            // If dataItem matches the searchText, return true to include it
////            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
////        }
////
////        tableView.reloadData()
////    }
////
//
//  //  ====================================
//    override func viewDidLoad() {
//        super.viewDidLoad()
////
//        self.searchController = UISearchController(searchResultsController: resultController)
//        tableView2.tableHeaderView = self.searchController.searchBar
//
////  ?      self.searchController.searchResultsUpdater
//
//        self.resultController.tableView.delegate = self
//        self.resultController.tableView.dataSource = self
////
////
////
//    }
////
//    func updateSearchResults(for searchController: UISearchController) {
//
//
//        self.filteredArray = array.filter({ (array: String) -> Bool in
//
//            if array.contains(searchController.searchBar.text!)
//            {
//                return true
//            }
//            else
//            {
//                return false
//            }
//
//        })
//
//        self.resultController.tableView.reloadData()
//    }
////
////
////
//    // MARK: - Table view data source
//    override func numberOfSections(in tableView: UITableView) -> Int {
//
//                if tableView == resultController.tableView
//                {
//                    return self.filteredArray.count
//                }
//                else
//                {
//                    return self.array.count
//                }
//         return 15 ///// using "Return 0" works
//
//    }
////
////
//override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//
//        if tableView2 == resultController.tableView
//        {
//            return self.filteredArray.count
//        }
//        else
//        {
//            return self.array.count
//        }
//
//   }
//
////
////    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//////
////        let cell = UITableViewCell()
////
////
////        if tableView == resultController.tableView
////        {
////
////            cell.textLabel?.text = self.filteredArray[indexPath.row]
////        }
////        else
////        {
////            cell.textLabel?.text = self.array[indexPath.row]
////        }
////        return cell
////}
//
//
//
//
//         }
//
//
//
