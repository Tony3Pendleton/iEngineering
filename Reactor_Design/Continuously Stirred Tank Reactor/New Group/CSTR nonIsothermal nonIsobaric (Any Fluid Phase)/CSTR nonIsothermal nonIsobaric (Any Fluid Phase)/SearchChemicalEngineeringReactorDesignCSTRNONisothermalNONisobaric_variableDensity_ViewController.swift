//
//  SearchMASTERSubjectCategoryViewController.swift
//  CHE Equations
//
//  Created by Anthony Pendleton on 3/24/18.
//  Copyright © 2018 CHE Equations. All rights reserved.
//

import Foundation


/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

class SearchChemicalEngineeringReactorDesignCSTRNONisothermalNONisobaric_variableDensity_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Properties
    @IBOutlet var tableView: UITableView!
    @IBOutlet var searchFooter: SearchFooter!
    //New
    var detailViewController: DetailViewController? = nil
    var candies = [Candy]()
    
    var filteredCandies = [Candy]() //SUPPOSED TO BE [Candy]!
    
    //property
    let searchController = UISearchController(searchResultsController: nil) //SUPPOSED TO BE """"LET"""""" degbugging at the moment
    //
    //++++++++++++
    var filteredDataCandy:[Candy] = []
    
    //++++++++++++
    //=========
    
    //=========
    
    // MARK: - View Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Filter"
        navigationItem.searchController = searchController
        
        //default code ===> definesPresentationContext = true
        //https://stackoverflow.com/questions/29472011/uisearchcontroller-persisting-after-segue THE BELOW LINE OF CODE GOT THE SEARCH BAR WORKING WHEN THE SEARCH CONTROLLER IS ACTIVE!!! 02162018
        self.searchController.definesPresentationContext = true
        definesPresentationContext = true
        
        // Setup the Scope Bar
        //    searchController.searchBar.scopeButtonTitles = ["All", "Chocolate", "Hard", "Other"]
        searchController.searchBar.scopeButtonTitles = ["All","","",""]
        searchController.searchBar.delegate = self
        
        // Setup the search footer
        tableView.tableFooterView = searchFooter
        
        // ------------
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.numberOfLines = 3
        label.backgroundColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.text = "CSTR/Nonisothermal/Nonisobaric"
        self.navigationItem.titleView = label
        // ------------
        
        candies = [
            
            Candy(category:"", name:"Variable Density", mySegueIdentifiers:"SearchChemicalEngineeringReactorDesignGoToCSTRNONisothermalNONIsobaric_VariableDensity_VARIABLEtoSOLVE_ViewController")
            
            
        ]
        
        
        
    }
    //????????????????????
    
    //????????????????????
    
    
    
    
    
    //  override func viewWillAppear(_ animated: Bool) {
    //    if splitViewController!.isCollapsed {
    //      if let selectionIndexPath = tableView.indexPathForSelectedRow {
    //        tableView.deselectRow(at: selectionIndexPath, animated: animated)
    //      }
    //    }
    //    super.viewWillAppear(animated)
    //  }
    
    override func viewWillDisappear(_ animated: Bool) {
        searchController.isActive = false
        super.viewWillAppear(animated)
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //////////////////////////////// these two functions mainly work to update the main array to ensure when one of the updated results is
    // pressed it sends the user to the correct view controller. Otherwise, the user would be sent to the original index in the main array~~i think this is correct
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            searchFooter.setIsFilteringToShow(filteredItemCount: filteredCandies.count, of: candies.count)
            return filteredCandies.count
        }
        
        searchFooter.setNotFiltering()
        return candies.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let candy: Candy
        if isFiltering() {
            candy = filteredCandies[indexPath.row]
        } else {
            candy = candies[indexPath.row]
        }
        
        
        cell.textLabel!.text = candy.name
        cell.detailTextLabel!.text = candy.category
        cell.textLabel!.textColor = .white
        cell.detailTextLabel!.textColor = .white
        
        
        return cell
    }
    /////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Segues
    //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //    //
    //
    //
    //    if segue.identifier == "showDetail" {
    //      if let indexPath = tableView.indexPathForSelectedRow {
    //        let candy: Candy
    //        if isFiltering() {
    //          candy = filteredCandies[indexPath.row]
    //        } else {
    //          candy = candies[indexPath.row]
    //        }
    //        let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
    //        controller.detailCandy = candy
    //        controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
    //        controller.navigationItem.leftItemsSupplementBackButton = true
    //      }
    //
    //    }
    //  }
    
    //
    //
    //
    //
    //
    //
    //
    
    
    
    //////////////////// GOOD SECTION 02142018 ///////////////////
    //
    //  func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    //        if (segue.identifier == "showDetail") {
    //            if let indexPath = tableView.indexPathForSelectedRow {
    //                let candy: Candy
    //                if isFiltering() {
    //                    candy = filteredCandies[indexPath.row]
    //                } else {
    //                    candy = candies[indexPath.row]
    //                }
    //                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
    //                controller.detailCandy = candy
    //                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
    //                controller.navigationItem.leftItemsSupplementBackButton = true
    //            }
    //        }
    //    }
    /////////////////////////////////////////////////////////////
    
    
    
    
    
    //    "SearchVariablesFluidMechanicsGoToDiameterLaminarViewController", "SearchVariablesFluidMechanicsGoToDiameterTurbulentViewController", "SearchVariablesFluidMechanicsGoToFrictionalDissipationViewController", "SearchVariablesFluidMechanicsGoToFrictionFactorLaminarViewController", "SearchVariablesFluidMechanicsGoToFrictionFactorTurbulentViewController",
    
    
    ////new ##NO indexPath: IndexPath is supposed to be here debugging 02192018
    //func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    //if searchController.isActive && isFiltering() {
    // searchController.isActive = true
    
    //NOTE: while debugging i noticed using candies[indexPath..... for both the before and after "else" statement works
    //segueString = "\(nameString)" + "View"
    
    
    //        let blogSegueIdentifier = candies[indexPath.row].mySegueIdentifiers
    //        if  segue.identifier == blogSegueIdentifier,
    //            let destination = segue.destinationViewController as? BlogViewController,
    //            blogIndex = tableView.indexPathForSelectedRow?.row
    //        {
    //            destination.blogName = swiftBlogs[blogIndex]
    //        }
    // }
    ////
    //=================
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        searchController.isActive = false;
    }
    
    ///////////////// https://stackoverflow.com/questions/29855457/didselectrowatindexpath-indexpath-after-filter-uisearchcontroller-swift ///////////////////////// TRY Yariv's answer 02232018 0428
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //debugging below code WORKS *important
        let indexPath = tableView.indexPathForSelectedRow! // REMOVED THIS AND NOW A FILTERED SEARCH SEGUE WORKS!!!!!!
        //////////
        //******************** trying Yarivs anser **************************
        
        // ****************************************************************
        
        
        
        
        //    let candy: Candy
        var nameString:String
        //    var segueString:String
        if searchController.isActive {
            
            //searchController.isActive = false
            
            
            nameString = filteredCandies[indexPath.row].mySegueIdentifiers
            //NOTE: while debugging i noticed using candies[indexPath..... for both the before and after "else" statement works
            //  segueString = "\(nameString)" + "View"
            performSegue(withIdentifier: nameString, sender: self)
            
            
        } else {
            nameString = candies[indexPath.row].mySegueIdentifiers
            // segueString = "\(nameString)" + "View"
            performSegue(withIdentifier: nameString, sender: self)
            
            
        }
        // performSegue(withIdentifier: filteredCandies[indexPath.row].mySegueIdentifiers, sender: self)
        
        
    }
    
    
    
    //=================
    
    
    // MARK: - Private instance methods
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredCandies = candies.filter({( candy : Candy) -> Bool in
            let doesCategoryMatch = (scope == "All") || (candy.category == scope)
            //***************** debugging 03032018
            
            //***************
            
            if searchBarIsEmpty() {
                return doesCategoryMatch
            } else {
                return doesCategoryMatch && candy.name.lowercased().contains(searchText.lowercased())
            }
        })
        tableView.reloadData()
    }
    
    func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    //    //I ADDED - debugging 02182018, never tried, but doubt it works
    //    func searchBarIsNOTempty() -> Bool {
    //        return searchController.searchBar.text?.isEmpty ?? false
    //    }
    //    //
    
    func isFiltering() -> Bool {
        let searchBarScopeIsFiltering = searchController.searchBar.selectedScopeButtonIndex != 0
        return searchController.isActive && (!searchBarIsEmpty() || searchBarScopeIsFiltering)
    }
}

extension SearchChemicalEngineeringReactorDesignCSTRNONisothermalNONisobaric_variableDensity_ViewController: UISearchBarDelegate {
    // MARK: - UISearchBar Delegate
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
}

extension SearchChemicalEngineeringReactorDesignCSTRNONisothermalNONisobaric_variableDensity_ViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        filterContentForSearchText(searchController.searchBar.text!, scope: scope)
    }
}

// *************************************************************************

// *************************************************************************



