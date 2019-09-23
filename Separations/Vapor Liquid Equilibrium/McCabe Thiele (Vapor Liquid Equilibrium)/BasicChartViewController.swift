//
//  BasicChartViewController.swift
//  SwiftChart
//
//  Created by Giampaolo Bellavite on 07/11/14.
//  Copyright (c) 2014 Giampaolo Bellavite. All rights reserved.
//

import UIKit
import SwiftChart

class ChemicalEngineeringSeparationsVaporLiquidEquilibriumLineChartViewController: UIViewController, ChartDelegate {

    @IBOutlet var ScrollView: UIScrollView!
    // @IBOutlet var ScrollView: UIScrollView!
//    @IBOutlet weak var chart: Chart!
    
    @IBOutlet weak var chart: Chart!
    
    @IBOutlet weak var myTextField1: UITextField!
    @IBOutlet weak var myTextField2: UITextField!
    @IBOutlet weak var myTextField3: UITextField!
    @IBOutlet weak var myTextField4: UITextField!
    @IBOutlet weak var myTextField5: UITextField!
    @IBOutlet weak var myTextField6: UITextField!
    @IBOutlet weak var myTextField7: UITextField!
    @IBOutlet weak var myTextField8: UITextField!
    @IBOutlet weak var myTextField9: UITextField!
    @IBOutlet weak var myTextField10: UITextField!
    @IBOutlet weak var myTextField11: UITextField!
    @IBOutlet weak var myTextField12: UITextField!
    @IBOutlet weak var myTextField13: UITextField!
    @IBOutlet weak var myTextField14: UITextField!
    @IBOutlet weak var myTextField15: UITextField!
    @IBOutlet weak var myTextField16: UITextField!
    @IBOutlet weak var myTextField17: UITextField!
    @IBOutlet weak var myTextField18: UITextField!
    @IBOutlet weak var myTextField19: UITextField!
    @IBOutlet weak var myTextField20: UITextField!
    @IBOutlet weak var myTextField21: UITextField!
    @IBOutlet weak var myTextField22: UITextField!
    @IBOutlet weak var myTextField23: UITextField!
    @IBOutlet weak var myTextField24: UITextField!
    @IBOutlet weak var myTextField25: UITextField!
    @IBOutlet weak var myTextField26: UITextField!
    @IBOutlet weak var myTextField27: UITextField!
    
    
    @IBOutlet weak var myLabel1: UILabel!
    
    var selectedChart = 0
    
    //override func viewDidLoad() {
   override func viewDidLoad() {
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:75))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "McCabe-Thiele Diagram"
        //label.text = "Pure Component Fugacity \n(PR EoS - Vapor)"
        self.navigationItem.titleView = label
    // ########### SCROLLING (1of2)#########################
    ScrollView.contentSize.height = 3000
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
    // ################################################
    // Draw the chart selected from the TableViewController
    chart.delegate = self
    self.view.bringSubview(toFront: chart)

    }
    
    
    @IBAction func myButton2(_ sender: Any) {
     chart.removeAllSeries()
        myLabel1.isHidden = false
        
                let firstValue = Double(myTextField1.text!) // Enter Main Component Fraction (Distillate)
                let secondValue = Double(myTextField2.text!) // Enter Main Component Fraction (Feed)
                let thirdValue = Double(myTextField3.text!) // Enter Main Component Fraction (Bottoms)
                let fourthValue = Double(myTextField4.text!) // Enter Reflux Ratio
                let fifthValue = Double(myTextField5.text!) // Enter q Variable (for q-line)
        
        let sixthValue = Double(myTextField6.text!) // x_0
        let seventhValue = Double(myTextField7.text!) // x_1
        let eighthValue = Double(myTextField8.text!) // x_2
        let ninthValue = Double(myTextField9.text!) // x_3
        let tenthValue = Double(myTextField10.text!) // x_4
        let eleventhValue = Double(myTextField11.text!) // x_5
        let twelvethValue = Double(myTextField12.text!) // x_6
        let thirteenthValue = Double(myTextField13.text!) // x_7
        let fourteenthValue = Double(myTextField14.text!) // x_8
        let fifthteenthValue = Double(myTextField15.text!) // x_9
        
        let twentysixthValue = Double(myTextField26.text!) // x_10
        
        let sixteenthValue = Double(myTextField16.text!) // y_0
        let seventeenthValue = Double(myTextField17.text!) // y_1
        let eighteenthValue = Double(myTextField18.text!) // y_2
        let nineteenthValue = Double(myTextField19.text!) // y_3
        let twentyValue = Double(myTextField20.text!) // y_4
        let twentyfirstValue = Double(myTextField21.text!) // y_5
        let twentysecondValue = Double(myTextField22.text!) // y_6
        let twentythirdValue = Double(myTextField23.text!) // y_7
        let twentyfourthValue = Double(myTextField24.text!) // y_8
        let twentyfifthValue = Double(myTextField25.text!) // y_9
        
        let twentyseventhValue = Double(myTextField27.text!) // y_10
        
//        let twentysixthValue = Double(myTextField26.text!) // Enter Minimum Reflux Ratio (Keep Changing till You Find Pinch Point)
       // print(seventhValue!)
                if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eighthValue != nil && ninthValue != nil && tenthValue != nil && eleventhValue != nil && twelvethValue != nil && thirteenthValue != nil && fourteenthValue != nil && fifthteenthValue != nil && sixteenthValue != nil && seventeenthValue != nil && eighteenthValue != nil && nineteenthValue != nil && twentyValue != nil && twentyfirstValue != nil && twentysecondValue != nil && twentythirdValue != nil && twentyfourthValue != nil && twentyfifthValue != nil && twentysixthValue != nil && twentyseventhValue != nil {
        
                   
                    
//                    let Constant1 = Double(fourthValue! / thirdValue!)
//                    let Constant2 = Double(log(Constant1))
//                    let Constant3 = Double(fifthValue! * Constant2)
//                    let Constant4 = Double(1/firstValue! - 1/secondValue!)
//                    let ActivationEnergy = Double(Constant3 / Constant4)
//
//                    // ################################################
//
//                    myLabel1.text = "Activation Energy = \(ActivationEnergy) J/mol"
        print(seventeenthValue!)
                    print(seventhValue!)
                    self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
      
                    var rootArray = [Double]()
                    var fvalueArray = [Double]()
                    var fdvalueArray = [Double]()
                    var solved = false
                    print(seventeenthValue!)
                    print(seventhValue!)
                    if !solved
                    {
                        // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                        for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                        {
                            var firstX = Double(2.0) //INITIAL GUESS --> might be wrong (look at if needing to debug)
                            print(seventeenthValue!)
                            print(seventhValue!)
                            var baseValue = Double()
                            var derValue = Double()
                            //                        var i = Double()
                            if i == 0
                                
                            {
                                
                                // objective function
                                baseValue = -seventeenthValue! + (firstX * seventhValue!)/(1-(1-firstX)*seventhValue!)
                                
                                // derivative of objective function
                                derValue = -((seventhValue! - 1)*(seventhValue!)/((seventhValue! * firstX - (seventhValue! - 1.0))*(seventhValue! * firstX - (seventhValue! - 1.0))))
                                
                                
                                
                                rootArray.append(firstX)
                                fvalueArray.append(baseValue)
                                fdvalueArray.append(derValue)
                            }
                            else
                            {
                                firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                                
                                // objective function
                                baseValue = -seventeenthValue! + (firstX * seventhValue!)/(1-(1-firstX)*seventhValue!)
                                
                                // derivative of objective function
                                derValue = -((seventhValue! - 1)*(seventhValue!)/((seventhValue! * firstX - (seventhValue! - 1.0))*(seventhValue! * firstX - (seventhValue! - 1.0))))
                                
                                rootArray.append(firstX)
                                fvalueArray.append(baseValue)
                                fdvalueArray.append(derValue)
                                print(seventeenthValue!)
                                print(seventhValue!)
                                //print(fdvalueArray)
                                
                                if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                                {
                                    print("solved after \(i)th iteration")
                                    
                                    
                                    print("Root is: \(rootArray[i])")
                                    
                                    solved = true
                                    break
                                    
                                }
                                myLabel1.text = "Relative Volatility = \(rootArray[i])"
                                let rootArrayVariable = rootArray[1]
                                print("rootArrayVariable is: \(rootArrayVariable)")
                            }
                            print(seventeenthValue!)
                            print(seventhValue!)
                        }
                        self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        
        print(seventeenthValue!)
                        print(seventhValue!)
         ///------------------
        switch selectedChart {
        case 0:
        print(seventeenthValue!)
        print(seventhValue!)
            // Simple chart // LINE CHART
          let data1 = [
            // (x: 0.0, y: 0.0)
            (x: 0.0, y: 0.0),
            (x: 0.1, y: 0.1),
            (x: 0.2, y: 0.2),
            (x: 0.3, y: 0.3),
            (x: 0.4, y: 0.4),
            (x: 0.5, y: 0.5),
            (x: 0.6, y: 0.6),
            (x: 0.7, y: 0.7),
            (x: 0.8, y: 0.8),
            (x: 0.9, y: 0.9),
            (x: 1.0, y: 1.0)
          ]
          //+++++++++++++++
          let data2 = [
           // (x: 0.0, y: 0.0)
            (x: sixthValue!, y: sixteenthValue!),
            (x: seventhValue!, y: seventeenthValue!),
            (x: eighthValue!, y: eighteenthValue!),
            (x: ninthValue!, y: nineteenthValue!),
            (x: tenthValue!, y: twentyValue!),
            (x: eleventhValue!, y: twentyfirstValue!),
            (x: twelvethValue!, y: twentysecondValue!),
            (x: thirteenthValue!, y: twentythirdValue!),
            (x: fourteenthValue!, y: twentyfourthValue!),
            (x: fifthteenthValue!, y: twentyfifthValue!),
            (x: twentysixthValue!, y: twentyseventhValue!)
          ]
          //+++++++++++++++
          //top section
          let topSectionConstant1 = Double(firstValue! / (1.0 + fourthValue!))
          let data3 = [
            // (x: 0.0, y: 0.0)
            (x: firstValue!, y: firstValue!),
            (x: 0.0, y: topSectionConstant1)
          ]
          //+++++++++++++++
          //q-line
          print(seventeenthValue!)
         print(seventhValue!)
          let slope = Double(fifthValue! / (fifthValue! - 1.0))
          print(slope)
          let qLineConstant1 = Double(0.4)
          let qLineConstant2 = Double((qLineConstant1 - secondValue!)*slope + secondValue!)
          
          let data4 = [
            // (x: 0.0, y: 0.0)
            (x: secondValue!, y: secondValue!),
            (x: 0.4, y: qLineConstant2)
          ]
          //+++++++++++++++
          //bottom section
          let bottomSectionConstant_a1 = Double(fourthValue! / (1.0 + fourthValue!))
            print(bottomSectionConstant_a1)
          let bottomSectionConstant_a2 = Double(slope)
          print(bottomSectionConstant_a2)
          let bottomSectionConstant_b1 = Double(topSectionConstant1)
          print(bottomSectionConstant_b1)
          let bottomSectionConstant_b2 = Double(-secondValue! / (fifthValue! - 1.0))
          print(bottomSectionConstant_b2)
          
          let bottomSectionConstantX = Double((bottomSectionConstant_b2 - bottomSectionConstant_b1)/(bottomSectionConstant_a1 - bottomSectionConstant_a2))
          print(bottomSectionConstantX)
          let bottomSectionConstantY = Double(bottomSectionConstant_a1 * bottomSectionConstantX + bottomSectionConstant_b1)
          print(bottomSectionConstantY)
          
          let data5 = [
            // (x: 0.0, y: 0.0)
            (x: thirdValue!, y: thirdValue!),
            (x: bottomSectionConstantX, y: bottomSectionConstantY)
          ]
        
          //++++++++++++++++++++++++STAGES+++++++++++++++++++++++++++
        //.......TOP SECTION.........
        let stage_1a_constant_x2 = Double(firstValue!/(rootArray.last! + (1.0 - rootArray.last!)*firstValue!))
        print("stage_1a_constant_x2: \(stage_1a_constant_x2)")
        let stage_1a = [
            (x: firstValue!, y: firstValue!),
            (x: stage_1a_constant_x2, y: firstValue!)
        ]
        
        let stage_1b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_1a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_1b_constant_y2)
        let stage_1b = [
            (x: stage_1a_constant_x2, y: firstValue!),
            (x: stage_1a_constant_x2, y: stage_1b_constant_y2)
        ]
        //
        let stage_2a_constant_x2 = Double(stage_1b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_1b_constant_y2))
        print(stage_2a_constant_x2)
        let stage_2a = [
            (x: stage_1a_constant_x2, y: stage_1b_constant_y2),
            (x: stage_2a_constant_x2, y: stage_1b_constant_y2)
        ]
        
        let stage_2b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_2a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_2b_constant_y2)
        let stage_2b = [
            (x: stage_2a_constant_x2, y: stage_1b_constant_y2),
            (x: stage_2a_constant_x2, y: stage_2b_constant_y2)
        ]
        //
        let stage_3a_constant_x2 = Double(stage_2b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_2b_constant_y2))
        print(stage_3a_constant_x2)
        let stage_3a = [
            (x: stage_2a_constant_x2, y: stage_2b_constant_y2),
            (x: stage_3a_constant_x2, y: stage_2b_constant_y2)
        ]
        
        let stage_3b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_3a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_3b_constant_y2)
        let stage_3b = [
            (x: stage_3a_constant_x2, y: stage_2b_constant_y2),
            (x: stage_3a_constant_x2, y: stage_3b_constant_y2)
        ]
        //
        let stage_4a_constant_x2 = Double(stage_3b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_3b_constant_y2))
        print(stage_4a_constant_x2)
        let stage_4a = [
            (x: stage_3a_constant_x2, y: stage_3b_constant_y2),
            (x: stage_4a_constant_x2, y: stage_3b_constant_y2)
        ]
        let stage_4b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_4a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_4b_constant_y2)
        let stage_4b = [
            (x: stage_4a_constant_x2, y: stage_3b_constant_y2),
            (x: stage_4a_constant_x2, y: stage_4b_constant_y2)
        ]
        //
        let stage_5a_constant_x2 = Double(stage_4b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_4b_constant_y2))
        print(stage_5a_constant_x2)
        let stage_5a = [
            (x: stage_4a_constant_x2, y: stage_4b_constant_y2),
            (x: stage_5a_constant_x2, y: stage_4b_constant_y2)
        ]
        let stage_5b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_5a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_5b_constant_y2)
        let stage_5b = [
            (x: stage_5a_constant_x2, y: stage_4b_constant_y2),
            (x: stage_5a_constant_x2, y: stage_5b_constant_y2)
        ]
        //
        let stage_6a_constant_x2 = Double(stage_5b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_5b_constant_y2))
        print(stage_6a_constant_x2)
        let stage_6a = [
            (x: stage_5a_constant_x2, y: stage_5b_constant_y2),
            (x: stage_6a_constant_x2, y: stage_5b_constant_y2)
        ]
        let stage_6b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_6a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_6b_constant_y2)
        let stage_6b = [
            (x: stage_6a_constant_x2, y: stage_5b_constant_y2),
            (x: stage_6a_constant_x2, y: stage_6b_constant_y2)
        ]
        //
        let stage_7a_constant_x2 = Double(stage_6b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_6b_constant_y2))
        print(stage_7a_constant_x2)
        let stage_7a = [
            (x: stage_6a_constant_x2, y: stage_6b_constant_y2),
            (x: stage_7a_constant_x2, y: stage_6b_constant_y2)
        ]
        let stage_7b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_7a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_7b_constant_y2)
        let stage_7b = [
            (x: stage_7a_constant_x2, y: stage_6b_constant_y2),
            (x: stage_7a_constant_x2, y: stage_7b_constant_y2)
        ]
        //
        let stage_8a_constant_x2 = Double(stage_7b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_7b_constant_y2))
        print(stage_8a_constant_x2)
        let stage_8a = [
            (x: stage_7a_constant_x2, y: stage_7b_constant_y2),
            (x: stage_8a_constant_x2, y: stage_7b_constant_y2)
        ]
        let stage_8b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_8a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_8b_constant_y2)
        let stage_8b = [
            (x: stage_8a_constant_x2, y: stage_7b_constant_y2),
            (x: stage_8a_constant_x2, y: stage_8b_constant_y2)
        ]
        //
        let stage_9a_constant_x2 = Double(stage_8b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_8b_constant_y2))
        print(stage_9a_constant_x2)
        let stage_9a = [
            (x: stage_8a_constant_x2, y: stage_8b_constant_y2),
            (x: stage_9a_constant_x2, y: stage_8b_constant_y2)
        ]
        let stage_9b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_9a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_9b_constant_y2)
        let stage_9b = [
            (x: stage_9a_constant_x2, y: stage_8b_constant_y2),
            (x: stage_9a_constant_x2, y: stage_9b_constant_y2)
        ]
        //
        let stage_10a_constant_x2 = Double(stage_9b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_9b_constant_y2))
        print(stage_10a_constant_x2)
        let stage_10a = [
            (x: stage_9a_constant_x2, y: stage_9b_constant_y2),
            (x: stage_10a_constant_x2, y: stage_9b_constant_y2)
        ]
        let stage_10b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_10a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_10b_constant_y2)
        let stage_10b = [
            (x: stage_10a_constant_x2, y: stage_9b_constant_y2),
            (x: stage_10a_constant_x2, y: stage_10b_constant_y2)
        ]
        //
        let stage_11a_constant_x2 = Double(stage_10b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_10b_constant_y2))
        print(stage_11a_constant_x2)
        let stage_11a = [
            (x: stage_10a_constant_x2, y: stage_10b_constant_y2),
            (x: stage_11a_constant_x2, y: stage_10b_constant_y2)
        ]
        let stage_11b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_11a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_11b_constant_y2)
        let stage_11b = [
            (x: stage_11a_constant_x2, y: stage_10b_constant_y2),
            (x: stage_11a_constant_x2, y: stage_11b_constant_y2)
        ]
        //
        let stage_12a_constant_x2 = Double(stage_11b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_11b_constant_y2))
        print(stage_12a_constant_x2)
        let stage_12a = [
            (x: stage_11a_constant_x2, y: stage_11b_constant_y2),
            (x: stage_12a_constant_x2, y: stage_11b_constant_y2)
        ]
        let stage_12b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_12a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_12b_constant_y2)
        let stage_12b = [
            (x: stage_12a_constant_x2, y: stage_11b_constant_y2),
            (x: stage_12a_constant_x2, y: stage_12b_constant_y2)
        ]
        //
        let stage_13a_constant_x2 = Double(stage_12b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_12b_constant_y2))
        print(stage_13a_constant_x2)
        let stage_13a = [
            (x: stage_12a_constant_x2, y: stage_12b_constant_y2),
            (x: stage_13a_constant_x2, y: stage_12b_constant_y2)
        ]
        let stage_13b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_13a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_13b_constant_y2)
        let stage_13b = [
            (x: stage_13a_constant_x2, y: stage_12b_constant_y2),
            (x: stage_13a_constant_x2, y: stage_13b_constant_y2)
        ]
        //
        let stage_14a_constant_x2 = Double(stage_13b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_13b_constant_y2))
        print(stage_14a_constant_x2)
        let stage_14a = [
            (x: stage_13a_constant_x2, y: stage_13b_constant_y2),
            (x: stage_14a_constant_x2, y: stage_13b_constant_y2)
        ]
        let stage_14b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_14a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_14b_constant_y2)
        let stage_14b = [
            (x: stage_14a_constant_x2, y: stage_13b_constant_y2),
            (x: stage_14a_constant_x2, y: stage_14b_constant_y2)
        ]
        //
        let stage_15a_constant_x2 = Double(stage_14b_constant_y2/(rootArray.last! + (1.0 - rootArray.last!)*stage_14b_constant_y2))
        print(stage_15a_constant_x2)
        let stage_15a = [
            (x: stage_14a_constant_x2, y: stage_14b_constant_y2),
            (x: stage_15a_constant_x2, y: stage_14b_constant_y2)
        ]
        let stage_15b_constant_y2 = Double((fourthValue!/(fourthValue! + 1.0)*stage_15a_constant_x2 + firstValue!/(fourthValue!+1.0)))
        print(stage_15b_constant_y2)
        let stage_15b = [
            (x: stage_15a_constant_x2, y: stage_14b_constant_y2),
            (x: stage_15a_constant_x2, y: stage_15b_constant_y2)
        ]
        //
        //............................
        
        //......BOTTOM SECTION........
        let bottom_section_stage_1a_constant_y2 = Double(rootArray.last! * thirdValue! / (1-(1-rootArray.last!)*thirdValue!))
        print("bottom_section_stage_1a_constant_y2: \(stage_1a_constant_x2)")
        let bottom_section_stage_1a = [
            (x: thirdValue!, y: thirdValue!),
            (x: thirdValue!, y: bottom_section_stage_1a_constant_y2)
        ]
       
        let BOTTOM_SECTION_SLOPE = Double((thirdValue! - bottomSectionConstantY)/(thirdValue! - bottomSectionConstantX))
        print("BOTTOM_SECTION_SLOPE \(BOTTOM_SECTION_SLOPE)")
        let BOTTOM_SECTION_INTERCEPT = Double(bottomSectionConstantY - bottomSectionConstantX * BOTTOM_SECTION_SLOPE)
        print("BOTTOM_SECTION_INTERCEPT \(BOTTOM_SECTION_INTERCEPT)")
        let bottom_section_stage_1b_constant_x2 = Double((bottom_section_stage_1a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_1b_constant_x2)
        let bottom_section_stage_1b = [
            (x: thirdValue!, y: bottom_section_stage_1a_constant_y2),
            (x: bottom_section_stage_1b_constant_x2, y: bottom_section_stage_1a_constant_y2)
        ]
        //
        let bottom_section_stage_2a_constant_y2 = Double(rootArray.last! * bottom_section_stage_1b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_1b_constant_x2))
        print("bottom_section_stage_1a_constant_y2: \(bottom_section_stage_2a_constant_y2)")
        let bottom_section_stage_2a = [
            (x: bottom_section_stage_1b_constant_x2, y: bottom_section_stage_1a_constant_y2),
            (x: bottom_section_stage_1b_constant_x2, y: bottom_section_stage_2a_constant_y2)
        ]
        
        let bottom_section_stage_2b_constant_x2 = Double((bottom_section_stage_2a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(" bottom_section_stage_2b_constant_x2 \(bottom_section_stage_2b_constant_x2)")
        let bottom_section_stage_2b = [
            (x: bottom_section_stage_1b_constant_x2, y: bottom_section_stage_2a_constant_y2),
            (x: bottom_section_stage_2b_constant_x2, y: bottom_section_stage_2a_constant_y2)
        ]
        //
        let bottom_section_stage_3a_constant_y2 = Double(rootArray.last! * bottom_section_stage_2b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_2b_constant_x2))
        print("bottom_section_stage_3a_constant_y2: \(bottom_section_stage_3a_constant_y2)")
        let bottom_section_stage_3a = [
            (x: bottom_section_stage_2b_constant_x2, y: bottom_section_stage_2a_constant_y2),
            (x: bottom_section_stage_2b_constant_x2, y: bottom_section_stage_3a_constant_y2)
        ]
        
        let bottom_section_stage_3b_constant_x2 = Double((bottom_section_stage_3a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print("bottom_section_stage_3b_constant_x2 \(bottom_section_stage_3b_constant_x2)")
        
        let bottom_section_stage_3b = [
            (x: bottom_section_stage_2b_constant_x2, y: bottom_section_stage_3a_constant_y2),
            (x: bottom_section_stage_3b_constant_x2, y: bottom_section_stage_3a_constant_y2)
        ]
        //
        let bottom_section_stage_4a_constant_y2 = Double(rootArray.last! * bottom_section_stage_3b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_3b_constant_x2))
        print("bottom_section_stage_4a_constant_y2: \(bottom_section_stage_4a_constant_y2)")
        let bottom_section_stage_4a = [
            (x: bottom_section_stage_3b_constant_x2, y: bottom_section_stage_3a_constant_y2),
            (x: bottom_section_stage_3b_constant_x2, y: bottom_section_stage_4a_constant_y2)
        ]
        
        let bottom_section_stage_4b_constant_x2 = Double((bottom_section_stage_4a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(" bottom_section_stage_4b_constant_x2 \(bottom_section_stage_4b_constant_x2)")
        let bottom_section_stage_4b = [
            (x: bottom_section_stage_3b_constant_x2, y: bottom_section_stage_4a_constant_y2),
            (x: bottom_section_stage_4b_constant_x2, y: bottom_section_stage_4a_constant_y2)
        ]
        //
        let bottom_section_stage_5a_constant_y2 = Double(rootArray.last! * bottom_section_stage_4b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_4b_constant_x2))
        print("bottom_section_stage_5a_constant_y2: \(bottom_section_stage_5a_constant_y2)")
        let bottom_section_stage_5a = [
            (x: bottom_section_stage_4b_constant_x2, y: bottom_section_stage_4a_constant_y2),
            (x: bottom_section_stage_4b_constant_x2, y: bottom_section_stage_5a_constant_y2)
        ]
        
        let bottom_section_stage_5b_constant_x2 = Double((bottom_section_stage_5a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_5b_constant_x2)
        let bottom_section_stage_5b = [
            (x: bottom_section_stage_4b_constant_x2, y: bottom_section_stage_5a_constant_y2),
            (x: bottom_section_stage_5b_constant_x2, y: bottom_section_stage_5a_constant_y2)
        ]
        //
        let bottom_section_stage_6a_constant_y2 = Double(rootArray.last! * bottom_section_stage_5b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_5b_constant_x2))
        print("bottom_section_stage_6a_constant_y2: \(bottom_section_stage_6a_constant_y2)")
        let bottom_section_stage_6a = [
            (x: bottom_section_stage_5b_constant_x2, y: bottom_section_stage_5a_constant_y2),
            (x: bottom_section_stage_5b_constant_x2, y: bottom_section_stage_6a_constant_y2)
        ]
        
        let bottom_section_stage_6b_constant_x2 = Double((bottom_section_stage_6a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_6b_constant_x2)
        let bottom_section_stage_6b = [
            (x: bottom_section_stage_5b_constant_x2, y: bottom_section_stage_6a_constant_y2),
            (x: bottom_section_stage_6b_constant_x2, y: bottom_section_stage_6a_constant_y2)
        ]
        //
        let bottom_section_stage_7a_constant_y2 = Double(rootArray.last! * bottom_section_stage_6b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_6b_constant_x2))
        print("bottom_section_stage_7a_constant_y2: \(bottom_section_stage_7a_constant_y2)")
        let bottom_section_stage_7a = [
            (x: bottom_section_stage_6b_constant_x2, y: bottom_section_stage_6a_constant_y2),
            (x: bottom_section_stage_6b_constant_x2, y: bottom_section_stage_7a_constant_y2)
        ]
        
        let bottom_section_stage_7b_constant_x2 = Double((bottom_section_stage_7a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_7b_constant_x2)
        let bottom_section_stage_7b = [
            (x: bottom_section_stage_6b_constant_x2, y: bottom_section_stage_7a_constant_y2),
            (x: bottom_section_stage_7b_constant_x2, y: bottom_section_stage_7a_constant_y2)
        ]
        //
        
        let bottom_section_stage_8a_constant_y2 = Double(rootArray.last! * bottom_section_stage_7b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_7b_constant_x2))
        print("bottom_section_stage_8a_constant_y2: \(bottom_section_stage_8a_constant_y2)")
        let bottom_section_stage_8a = [
            (x: bottom_section_stage_7b_constant_x2, y: bottom_section_stage_7a_constant_y2),
            (x: bottom_section_stage_7b_constant_x2, y: bottom_section_stage_8a_constant_y2)
        ]
        
        let bottom_section_stage_8b_constant_x2 = Double((bottom_section_stage_8a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_8b_constant_x2)
        let bottom_section_stage_8b = [
            (x: bottom_section_stage_7b_constant_x2, y: bottom_section_stage_8a_constant_y2),
            (x: bottom_section_stage_8b_constant_x2, y: bottom_section_stage_8a_constant_y2)
        ]
        //
        let bottom_section_stage_9a_constant_y2 = Double(rootArray.last! * bottom_section_stage_8b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_8b_constant_x2))
        print("bottom_section_stage_9a_constant_y2: \(bottom_section_stage_9a_constant_y2)")
        let bottom_section_stage_9a = [
            (x: bottom_section_stage_8b_constant_x2, y: bottom_section_stage_8a_constant_y2),
            (x: bottom_section_stage_8b_constant_x2, y: bottom_section_stage_9a_constant_y2)
        ]
        
        let bottom_section_stage_9b_constant_x2 = Double((bottom_section_stage_9a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_9b_constant_x2)
        let bottom_section_stage_9b = [
            (x: bottom_section_stage_8b_constant_x2, y: bottom_section_stage_9a_constant_y2),
            (x: bottom_section_stage_9b_constant_x2, y: bottom_section_stage_9a_constant_y2)
        ]
        //
        let bottom_section_stage_10a_constant_y2 = Double(rootArray.last! * bottom_section_stage_9b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_9b_constant_x2))
        print("bottom_section_stage_10a_constant_y2: \(bottom_section_stage_10a_constant_y2)")
        let bottom_section_stage_10a = [
            (x: bottom_section_stage_9b_constant_x2, y: bottom_section_stage_9a_constant_y2),
            (x: bottom_section_stage_9b_constant_x2, y: bottom_section_stage_10a_constant_y2)
        ]
        
        let bottom_section_stage_10b_constant_x2 = Double((bottom_section_stage_10a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_10b_constant_x2)
        let bottom_section_stage_10b = [
            (x: bottom_section_stage_9b_constant_x2, y: bottom_section_stage_10a_constant_y2),
            (x: bottom_section_stage_10b_constant_x2, y: bottom_section_stage_10a_constant_y2)
        ]
        //
        let bottom_section_stage_11a_constant_y2 = Double(rootArray.last! * bottom_section_stage_10b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_10b_constant_x2))
        print("bottom_section_stage_11a_constant_y2: \(bottom_section_stage_11a_constant_y2)")
        let bottom_section_stage_11a = [
            (x: bottom_section_stage_10b_constant_x2, y: bottom_section_stage_10a_constant_y2),
            (x: bottom_section_stage_10b_constant_x2, y: bottom_section_stage_11a_constant_y2)
        ]
        
        let bottom_section_stage_11b_constant_x2 = Double((bottom_section_stage_11a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_11b_constant_x2)
        let bottom_section_stage_11b = [
            (x: bottom_section_stage_10b_constant_x2, y: bottom_section_stage_11a_constant_y2),
            (x: bottom_section_stage_11b_constant_x2, y: bottom_section_stage_11a_constant_y2)
        ]
        //
        let bottom_section_stage_12a_constant_y2 = Double(rootArray.last! * bottom_section_stage_11b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_11b_constant_x2))
        print("bottom_section_stage_12a_constant_y2: \(bottom_section_stage_12a_constant_y2)")
        let bottom_section_stage_12a = [
            (x: bottom_section_stage_11b_constant_x2, y: bottom_section_stage_11a_constant_y2),
            (x: bottom_section_stage_11b_constant_x2, y: bottom_section_stage_12a_constant_y2)
        ]
        
        let bottom_section_stage_12b_constant_x2 = Double((bottom_section_stage_12a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_12b_constant_x2)
        let bottom_section_stage_12b = [
            (x: bottom_section_stage_11b_constant_x2, y: bottom_section_stage_12a_constant_y2),
            (x: bottom_section_stage_12b_constant_x2, y: bottom_section_stage_12a_constant_y2)
        ]
        //
        let bottom_section_stage_13a_constant_y2 = Double(rootArray.last! * bottom_section_stage_12b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_12b_constant_x2))
        print("bottom_section_stage_13a_constant_y2: \(bottom_section_stage_13a_constant_y2)")
        let bottom_section_stage_13a = [
            (x: bottom_section_stage_12b_constant_x2, y: bottom_section_stage_12a_constant_y2),
            (x: bottom_section_stage_12b_constant_x2, y: bottom_section_stage_13a_constant_y2)
        ]
        
        let bottom_section_stage_13b_constant_x2 = Double((bottom_section_stage_13a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_13b_constant_x2)
        let bottom_section_stage_13b = [
            (x: bottom_section_stage_12b_constant_x2, y: bottom_section_stage_13a_constant_y2),
            (x: bottom_section_stage_13b_constant_x2, y: bottom_section_stage_13a_constant_y2)
        ]
        //
        let bottom_section_stage_14a_constant_y2 = Double(rootArray.last! * bottom_section_stage_13b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_13b_constant_x2))
        print("bottom_section_stage_14a_constant_y2: \(bottom_section_stage_14a_constant_y2)")
        let bottom_section_stage_14a = [
            (x: bottom_section_stage_13b_constant_x2, y: bottom_section_stage_13a_constant_y2),
            (x: bottom_section_stage_13b_constant_x2, y: bottom_section_stage_14a_constant_y2)
        ]
        
        let bottom_section_stage_14b_constant_x2 = Double((bottom_section_stage_14a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_14b_constant_x2)
        let bottom_section_stage_14b = [
            (x: bottom_section_stage_13b_constant_x2, y: bottom_section_stage_14a_constant_y2),
            (x: bottom_section_stage_14b_constant_x2, y: bottom_section_stage_14a_constant_y2)
        ]
        //
        let bottom_section_stage_15a_constant_y2 = Double(rootArray.last! * bottom_section_stage_14b_constant_x2 / (1-(1-rootArray.last!)*bottom_section_stage_14b_constant_x2))
        print("bottom_section_stage_15a_constant_y2: \(bottom_section_stage_15a_constant_y2)")
        let bottom_section_stage_15a = [
            (x: bottom_section_stage_14b_constant_x2, y: bottom_section_stage_14a_constant_y2),
            (x: bottom_section_stage_14b_constant_x2, y: bottom_section_stage_15a_constant_y2)
        ]
        
        let bottom_section_stage_15b_constant_x2 = Double((bottom_section_stage_15a_constant_y2 - BOTTOM_SECTION_INTERCEPT)/BOTTOM_SECTION_SLOPE)
        
        print(bottom_section_stage_15b_constant_x2)
        let bottom_section_stage_15b = [
            (x: bottom_section_stage_14b_constant_x2, y: bottom_section_stage_15a_constant_y2),
            (x: bottom_section_stage_15b_constant_x2, y: bottom_section_stage_15a_constant_y2)
        ]
        //
        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        
        let series1 = ChartSeries(data: data1)
          series1.color = UIColor.black
        // series1.color = ChartColors.blueColor()    //// default code colors
          series1.area = false
          
          let series2 = ChartSeries(data: data2)
          series2.color = UIColor.black
          series2.area = false
          
          let series3 = ChartSeries(data: data3)
          series3.color = UIColor.black
          series3.area = false
          
          let series4 = ChartSeries(data: data4)
          series4.color = UIColor.black
          series4.area = false
          
          let series5 = ChartSeries(data: data5)
          series5.color = UIColor.black
          series5.area = false
        
        // ---------- TOP SECTION (STAGE NUMBERING) -----------
        let series1a_TopSection = ChartSeries(data: stage_1a)
        series1a_TopSection.color = UIColor.black
        series1a_TopSection.area = false
        
        let series1b_TopSection = ChartSeries(data: stage_1b)
        series1b_TopSection.color = UIColor.black
        series1b_TopSection.area = false
        
        let series2a_TopSection = ChartSeries(data: stage_2a)
        series2a_TopSection.color = UIColor.black
        series2a_TopSection.area = false
        
        let series2b_TopSection = ChartSeries(data: stage_2b)
        series2b_TopSection.color = UIColor.black
        series2b_TopSection.area = false
        
        let series3a_TopSection = ChartSeries(data: stage_3a)
        series3a_TopSection.color = UIColor.black
        series3a_TopSection.area = false
        
        let series3b_TopSection = ChartSeries(data: stage_3b)
        series3b_TopSection.color = UIColor.black
        series3b_TopSection.area = false
        
        let series4a_TopSection = ChartSeries(data: stage_4a)
        series4a_TopSection.color = UIColor.black
        series4a_TopSection.area = false
        
        let series4b_TopSection = ChartSeries(data: stage_4b)
        series4b_TopSection.color = UIColor.black
        series4b_TopSection.area = false
        
        let series5a_TopSection = ChartSeries(data: stage_5a)
        series5a_TopSection.color = UIColor.black
        series5a_TopSection.area = false
        
        let series5b_TopSection = ChartSeries(data: stage_5b)
        series5b_TopSection.color = UIColor.black
        series5b_TopSection.area = false
        
        let series6a_TopSection = ChartSeries(data: stage_6a)
        series6a_TopSection.color = UIColor.black
        series6a_TopSection.area = false
        
        let series6b_TopSection = ChartSeries(data: stage_6b)
        series6b_TopSection.color = UIColor.black
        series6b_TopSection.area = false
        
        let series7a_TopSection = ChartSeries(data: stage_7a)
        series7a_TopSection.color = UIColor.black
        series7a_TopSection.area = false
        
        let series7b_TopSection = ChartSeries(data: stage_7b)
        series7b_TopSection.color = UIColor.black
        series7b_TopSection.area = false
        
        let series8a_TopSection = ChartSeries(data: stage_8a)
        series8a_TopSection.color = UIColor.black
        series8a_TopSection.area = false
        
        let series8b_TopSection = ChartSeries(data: stage_8b)
        series8b_TopSection.color = UIColor.black
        series8b_TopSection.area = false
        
        let series9a_TopSection = ChartSeries(data: stage_9a)
        series9a_TopSection.color = UIColor.black
        series9a_TopSection.area = false
        
        let series9b_TopSection = ChartSeries(data: stage_9b)
        series9b_TopSection.color = UIColor.black
        series9b_TopSection.area = false
        
        let series10a_TopSection = ChartSeries(data: stage_10a)
        series10a_TopSection.color = UIColor.black
        series10a_TopSection.area = false
        
        let series10b_TopSection = ChartSeries(data: stage_10b)
        series10b_TopSection.color = UIColor.black
        series10b_TopSection.area = false
        
        let series11a_TopSection = ChartSeries(data: stage_11a)
        series11a_TopSection.color = UIColor.black
        series11a_TopSection.area = false
        
        let series11b_TopSection = ChartSeries(data: stage_11b)
        series11b_TopSection.color = UIColor.black
        series11b_TopSection.area = false
        
        let series12a_TopSection = ChartSeries(data: stage_12a)
        series12a_TopSection.color = UIColor.black
        series12a_TopSection.area = false
        
        let series12b_TopSection = ChartSeries(data: stage_12b)
        series12b_TopSection.color = UIColor.black
        series12b_TopSection.area = false
        
        let series13a_TopSection = ChartSeries(data: stage_13a)
        series13a_TopSection.color = UIColor.black
        series13a_TopSection.area = false
        
        let series13b_TopSection = ChartSeries(data: stage_13b)
        series13b_TopSection.color = UIColor.black
        series13b_TopSection.area = false
        
        let series14a_TopSection = ChartSeries(data: stage_14a)
        series14a_TopSection.color = UIColor.black
        series14a_TopSection.area = false
        
        let series14b_TopSection = ChartSeries(data: stage_14b)
        series14b_TopSection.color = UIColor.black
        series14b_TopSection.area = false
        
        let series15a_TopSection = ChartSeries(data: stage_15a)
        series15a_TopSection.color = UIColor.black
        series15a_TopSection.area = false
        
        let series15b_TopSection = ChartSeries(data: stage_15b)
        series15b_TopSection.color = UIColor.black
        series15b_TopSection.area = false
        
        //--
        
        let series1a_BottomSection = ChartSeries(data: bottom_section_stage_1a)
        series1a_BottomSection.color = UIColor.black
        series1a_BottomSection.area = false
        
        let series1b_BottomSection = ChartSeries(data: bottom_section_stage_1b)
        series1b_BottomSection.color = UIColor.black
        series1b_BottomSection.area = false
        
        let series2a_BottomSection = ChartSeries(data: bottom_section_stage_2a)
        series2a_BottomSection.color = UIColor.black
        series2a_BottomSection.area = false
        
        let series2b_BottomSection = ChartSeries(data: bottom_section_stage_2b)
        series2b_BottomSection.color = UIColor.black
        series2b_BottomSection.area = false
        
        let series3a_BottomSection = ChartSeries(data: bottom_section_stage_3a)
        series3a_BottomSection.color = UIColor.black
        series3a_BottomSection.area = false
        
        let series3b_BottomSection = ChartSeries(data: bottom_section_stage_3b)
        series3b_BottomSection.color = UIColor.black
        series3b_BottomSection.area = false
        
        let series4a_BottomSection = ChartSeries(data: bottom_section_stage_4a)
        series4a_BottomSection.color = UIColor.black
        series4a_BottomSection.area = false
        
        let series4b_BottomSection = ChartSeries(data: bottom_section_stage_4b)
        series4b_BottomSection.color = UIColor.black
        series4b_BottomSection.area = false
        
        let series5a_BottomSection = ChartSeries(data: bottom_section_stage_5a)
        series5a_BottomSection.color = UIColor.black
        series5a_BottomSection.area = false
        
        let series5b_BottomSection = ChartSeries(data: bottom_section_stage_5b)
        series5b_BottomSection.color = UIColor.black
        series5b_BottomSection.area = false
        
        let series6a_BottomSection = ChartSeries(data: bottom_section_stage_6a)
        series6a_BottomSection.color = UIColor.black
        series6a_BottomSection.area = false
        
        let series6b_BottomSection = ChartSeries(data: bottom_section_stage_6b)
        series6b_BottomSection.color = UIColor.black
        series6b_BottomSection.area = false
        
        let series7a_BottomSection = ChartSeries(data: bottom_section_stage_7a)
        series7a_BottomSection.color = UIColor.black
        series7a_BottomSection.area = false
        
        let series7b_BottomSection = ChartSeries(data: bottom_section_stage_7b)
        series7b_BottomSection.color = UIColor.black
        series7b_BottomSection.area = false
        
        let series8a_BottomSection = ChartSeries(data: bottom_section_stage_8a)
        series8a_BottomSection.color = UIColor.black
        series8a_BottomSection.area = false
        
        let series8b_BottomSection = ChartSeries(data: bottom_section_stage_8b)
        series8b_BottomSection.color = UIColor.black
        series8b_BottomSection.area = false
        
        let series9a_BottomSection = ChartSeries(data: bottom_section_stage_9a)
        series9a_BottomSection.color = UIColor.black
        series9a_BottomSection.area = false
        
        let series9b_BottomSection = ChartSeries(data: bottom_section_stage_9b)
        series9b_BottomSection.color = UIColor.black
        series9b_BottomSection.area = false
        
        let series10a_BottomSection = ChartSeries(data: bottom_section_stage_10a)
        series10a_BottomSection.color = UIColor.black
        series10a_BottomSection.area = false
        
        let series10b_BottomSection = ChartSeries(data: bottom_section_stage_10b)
        series10b_BottomSection.color = UIColor.black
        series10b_BottomSection.area = false
        
        let series11a_BottomSection = ChartSeries(data: bottom_section_stage_11a)
        series11a_BottomSection.color = UIColor.black
        series11a_BottomSection.area = false
        
        let series11b_BottomSection = ChartSeries(data: bottom_section_stage_11b)
        series11b_BottomSection.color = UIColor.black
        series11b_BottomSection.area = false
        
        let series12a_BottomSection = ChartSeries(data: bottom_section_stage_12a)
        series12a_BottomSection.color = UIColor.black
        series12a_BottomSection.area = false
        
        let series12b_BottomSection = ChartSeries(data: bottom_section_stage_12b)
        series12b_BottomSection.color = UIColor.black
        series12b_BottomSection.area = false
        
        let series13a_BottomSection = ChartSeries(data: bottom_section_stage_13a)
        series13a_BottomSection.color = UIColor.black
        series13a_BottomSection.area = false
        
        let series13b_BottomSection = ChartSeries(data: bottom_section_stage_13b)
        series13b_BottomSection.color = UIColor.black
        series13b_BottomSection.area = false
        
        let series14a_BottomSection = ChartSeries(data: bottom_section_stage_14a)
        series14a_BottomSection.color = UIColor.black
        series14a_BottomSection.area = false
        
        let series14b_BottomSection = ChartSeries(data: bottom_section_stage_14b)
        series14b_BottomSection.color = UIColor.black
        series14b_BottomSection.area = false
        
        let series15a_BottomSection = ChartSeries(data: bottom_section_stage_15a)
        series15a_BottomSection.color = UIColor.black
        series15a_BottomSection.area = false
        
        let series15b_BottomSection = ChartSeries(data: bottom_section_stage_15b)
        series15b_BottomSection.color = UIColor.black
        series15b_BottomSection.area = false
        // -----------------------------------------------------
        
          //chart.xLabels = [0, 3, 6, 9]
    chart.xLabels = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]
          chart.minX = 0.0
          chart.maxX = 1.0
        //  chart.xLabelsFormatter = { String(Int(round($1))) + "x, benzene" }
         // chart.add(series)
   //     chart.yLabelsFormatter = { String(Int($1)) +  "ºC" } //not sure how this line works, but it subscripts the degree symbol on the y-axis. However, I think I am going to use Kelvin on the Y-Axis
      chart.yLabels = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]
         chart.minY = 0.0
         chart.maxY = 1.0
        //  chart.yLabelsFormatter = { String(Int($1)) +  "y, benzene" }
//          let series = ChartSeries(data: data)
//          chart.add(series)
          
          //chart.add([series])
         //   chart.add([series1, series2, series3])
            chart.add([series1, series2, series3, series4, series5, series1a_TopSection, series1b_TopSection, series2a_TopSection, series2b_TopSection, series3a_TopSection, series3b_TopSection, series4a_TopSection, series4b_TopSection, series5a_TopSection, series5b_TopSection, series6a_TopSection, series6b_TopSection, series7a_TopSection, series7b_TopSection,series8a_TopSection, series8b_TopSection,series9a_TopSection, series9b_TopSection,series10a_TopSection, series10b_TopSection,series11a_TopSection, series11b_TopSection, series12a_TopSection, series12b_TopSection, series13a_TopSection, series13b_TopSection, series14a_TopSection, series14b_TopSection, series15a_TopSection, series15b_TopSection, series1a_BottomSection, series1b_BottomSection, series2a_BottomSection, series2b_BottomSection, series3a_BottomSection, series3b_BottomSection, series4a_BottomSection, series4b_BottomSection, series5a_BottomSection, series5b_BottomSection, series6a_BottomSection, series6b_BottomSection, series7a_BottomSection, series7b_BottomSection, series8a_BottomSection, series8b_BottomSection, series9a_BottomSection, series9b_BottomSection, series10a_BottomSection, series10b_BottomSection, series11a_BottomSection, series11b_BottomSection, series12a_BottomSection, series12b_BottomSection, series13a_BottomSection, series13b_BottomSection, series14a_BottomSection, series14b_BottomSection, series15a_BottomSection, series15b_BottomSection])
            
        case 1:
            
            // Example with multiple series, the first two with area enabled
            
            let series1 = ChartSeries([0, 6, 2, 8, 4, 7, 3, 10, 8])
            series1.color = ChartColors.yellowColor()
            series1.area = true
            
            let series2 = ChartSeries([1, 0, 0.5, 0.2, 0, 1, 0.8, 0.3, 1])
            series2.color = ChartColors.redColor()
            series2.area = true
            
            // A partially filled series
            let series3 = ChartSeries([9, 8, 10, 8.5, 9.5, 10])
            series3.color = ChartColors.purpleColor()
            
            chart.add([series1, series2, series3])
            
        case 2:
            
            // Chart with y-min, y-max and y-labels formatter
            let data: [Double] = [0, -2, -2, 3, -3, 4, 1, 0, -1]
            
            let series = ChartSeries(data)
            series.colors = (
              above: ChartColors.greenColor(),
              below: ChartColors.yellowColor(),
              zeroLevel: -1
            )
            series.area = true
            
            chart.add(series)
            
            // Set minimum and maximum values for y-axis
            chart.minY = -7
            chart.maxY = 7
            
            // Format y-axis, e.g. with units
            chart.yLabelsFormatter = { String(Int($1)) +  "ºC" }
        
        case 3:
            // Create a new series specifying x and y values
            let data = [(x: 0, y: 0), (x: 0.5, y: 3.1), (x: 1.2, y: 2), (x: 2.1, y: -4.2), (x: 2.6, y: 1.1)]
            let series = ChartSeries(data: data)
            chart.add(series)
            
        default: break;
        //---------------
        
        }
        
        
        // ################################################
        
//        myLabel1.text = "α = \(alphaOutputValue)"
//        myLabel2.text = "β = \(betaOutputValue)"
//        myLabel3.text = "q = \(qOutputValue)"
            //   myLabel4.text = "Your Z value is: \(zOutputValue)"
        //--------------
        }
                }else{
                    myLabel1.text = "Hey! Enter a number!"
                    self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    
    
   
    
    
    
    // ########### SCROLLING (2of2) #########################
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)

        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        ScrollView.contentInset = contentInset
    }

    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        ScrollView.contentInset = contentInset
    }
    // ################################################
    

    
    
    
    
    // Chart delegate
    
    func didTouchChart(_ chart: Chart, indexes: Array<Int?>, x: Double, left: CGFloat) {
        for (seriesIndex, dataIndex) in indexes.enumerated() {
            if let value = chart.valueForSeries(seriesIndex, atIndex: dataIndex) {
                print("Touched series: \(seriesIndex): data index: \(dataIndex!); series value: \(value); x-axis value: \(x) (from left: \(left))")
            }
        }
    }
    
    func didFinishTouchingChart(_ chart: Chart) {
        
    }
    
    func didEndTouchingChart(_ chart: Chart) {
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        super.viewWillTransition(to: size, with: coordinator)
        
        // Redraw chart on rotation
        chart.setNeedsDisplay()
        
    }
    
}
