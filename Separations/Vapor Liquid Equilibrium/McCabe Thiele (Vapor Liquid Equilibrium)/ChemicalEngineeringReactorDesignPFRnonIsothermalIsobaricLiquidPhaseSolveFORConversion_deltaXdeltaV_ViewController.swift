//
//  BasicChartViewController.swift
//  SwiftChart
//
//  Created by Giampaolo Bellavite on 07/11/14.
//  Copyright (c) 2014 Giampaolo Bellavite. All rights reserved.
//

import UIKit
import SwiftChart
import Foundation

class ChemicalEngineeringReactorDesignPFRnonIsothermalIsobaricLiquidPhaseSolveFORConversion_deltaXdeltaV_ViewController: UIViewController, ChartDelegate {

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
      //  label.text = "Differential dX/dV \n(PFR/Non-Isothermal/Isobaric/Liquid)"
    label.text = "Differential dX/dV \nIN PROGRESS! (Not Ready)"
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
        
                let firstValue = Double(myTextField1.text!) // Activation Energy (J/mol-K)
                let secondValue = Double(myTextField2.text!) // Gas Constant (8.314 J/mol-K)
                let thirdValue = Double(myTextField3.text!) // Initial Temperature (K)
               let fourthValue = Double(myTextField4.text!) // Final Temperature (K)
        
                let fifthValue = Double(myTextField5.text!) // Rate Constant at Initial Temperature
       let sixthValue = Double(myTextField5.text!)  // Initial Concentration of A (mol/m^3)
        
          let seventhValue = Double(myTextField7.text!) // Volumetric Flow Rate (m^3/s)
        let eighthValue = Double(myTextField8.text!) // Reaction Order with Respect to A
        let ninthValue = Double(myTextField9.text!) // Reaction Order with Respect to B
        
        let tenthValue = Double(myTextField10.text!) // Stoichiometric Coefficient with Respect to A
        let eleventhValue = Double(myTextField11.text!) // Stoichiometric Coefficient with Respect to B
        let twelthValue = Double(myTextField12.text!) // Stoichiometric Coefficient with Respect to C
        let thirteenthValue = Double(myTextField13.text!) // Stoichiometric Coefficient with Respect to D
        
        let fourteenthValue = Double(myTextField14.text!) // Heat of Formation (J/mol) with Respect to A at Reference Temperature
        let fifthteenthValue = Double(myTextField15.text!) // Heat of Formation (J/mol) with Respect to B at Reference Temperature
        let sixthteenthValue = Double(myTextField16.text!) // Heat of Formation (J/mol) with Respect to C at Reference Temperature
        let seventhteenthValue = Double(myTextField17.text!) // Heat of Formation (J/mol) with Respect to D at Reference Temperature
        let eighteenthValue = Double(myTextField18.text!) // Heat of Formation (J/mol) with Respect to Inert at Reference Temperature  //// INERT!!!!
        
        
        let nineteenthValue = Double(myTextField19.text!) // Specific Heat Capacity  (J/mol-K) with Respect to A at Reference Temperature
        let twentiethValue = Double(myTextField20.text!) // Specific Heat Capacity  (J/mol-K) with Respect to B at Reference Temperature
        let twentyFirstValue = Double(myTextField21.text!) // Specific Heat Capacity  (J/mol-K) with Respect to C at Reference Temperature
        let twentySecondValue = Double(myTextField22.text!) // Specific Heat Capacity  (J/mol-K) with Respect to D at Reference Temperature
        let twentyThirdValue = Double(myTextField23.text!) // Specific Heat Capacity  (J/mol-K) with Respect to Inert at Reference Temperature //// INERT!!!!
        
        let twentyFourthValue = Double(myTextField24.text!) // Reference Temperature (K) for Specific Heat Capacity and Heat of Formation
        
        let twentyFifthValue = Double(myTextField25.text!) // Initial Moles of A | Initial Concentration of A | Mole Fraction of A
        let twentySixthValue = Double(myTextField26.text!) // Initial Moles of B | Initial Concentration of B | Mole Fraction of B
        let twentySeventhValue = Double(myTextField27.text!) // Initial Moles of Inert | Initial Concentration of Inert | Mole Fraction of Inert

        // //  Initial Moles of A | Initial Concentration of A | Mole Fraction of A
        // // Initial Moles of B | Initial Concentration of B | Mole Fraction of B
        //  Initial Moles of Inert | Initial Concentration of Inert | Mole Fraction of Inert
//********************************************************************************
//********************** DONT FORGET TO CHANGE BACK ******************************
//********************************************************************************
//                if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eighthValue != nil && ninthValue != nil && tenthValue != nil && eleventhValue != nil && twelthValue != nil && thirteenthValue != nil && fourteenthValue != nil && fifthteenthValue != nil && sixthteenthValue != nil && seventhteenthValue != nil && eighteenthValue != nil && nineteenthValue != nil && twentiethValue != nil && twentyFirstValue != nil && twentySecondValue != nil && twentyThirdValue != nil && twentyFourthValue != nil && twentyFifthValue != nil && twentySixthValue != nil && twentySeventhValue != nil {
//********************************************************************************
//********************************************************************************
//********************************************************************************

                       if firstValue == nil && secondValue == nil && thirdValue == nil && fourthValue == nil && fifthValue == nil && sixthValue == nil && seventhValue == nil && eighthValue == nil && ninthValue == nil && tenthValue == nil && eleventhValue == nil && twelthValue == nil && thirteenthValue == nil && fourteenthValue == nil && fifthteenthValue == nil && sixthteenthValue == nil && seventhteenthValue == nil && eighteenthValue == nil && nineteenthValue == nil && twentiethValue == nil && twentyFirstValue == nil && twentySecondValue == nil && twentyThirdValue == nil && twentyFourthValue == nil && twentyFifthValue == nil && twentySixthValue == nil && twentySeventhValue == nil {

        
                    let firstValue = Double(10000) // Activation Energy (J/mol-K)
                    let secondValue = Double(1.987) // Gas Constant (8.314 J/mol-K)
                    let thirdValue = Double(300) // Initial Temperature (K)
                    let fourthValue = Double(0) // Final Temperature (K)
                     let fifthValue = Double(0.00000005) // Rate Constant at Initial Temperature
                    
                     let sixthValue = Double(5000) // Initial Concentration of A (mol/m^3)
                    
                     let seventhValue = Double(0.002) // Volumetric Flow Rate (m^3/s)
                    
                     let eighthValue = Double(1) // Reaction Order with Respect to A
                     let ninthValue = Double(1) // Reaction Order with Respect to B
                     let tenthValue = Double(1) // Stoichiometric Coefficient with Respect to A
                     let eleventhValue = Double(1) // Stoichiometric Coefficient with Respect to B
                     let twelthValue = Double(1) // Stoichiometric Coefficient with Respect to C
                     let thirteenthValue = Double(0) // Stoichiometric Coefficient with Respect to D
                     let fourteenthValue = Double(-20000) // Heat of Formation (J/mol) with Respect to A at Reference Temperature
                     let fifthteenthValue = Double(-15000) // Heat of Formation (J/mol) with Respect to B at Reference Temperature
                     let sixthteenthValue = Double(-41000) // Heat of Formation (J/mol) with Respect to C at Reference Temperature
                     let seventhteenthValue = Double(0) // Heat of Formation (J/mol) with Respect to D at Reference Temperature
                     let eighteenthValue = Double(0) // Heat of Formation (J/mol) with Respect to Inert at Reference Temperature
                     let nineteenthValue = Double(15) // Specific Heat Capacity  (J/mol-K) with Respect to A at Reference Temperature
                     let twentiethValue = Double(18) // Specific Heat Capacity  (J/mol-K) with Respect to B at Reference Temperature
                     let twentyFirstValue = Double(36) // Specific Heat Capacity  (J/mol-K) with Respect to C at Reference Temperature
                     let twentySecondValue = Double(0) // Specific Heat Capacity  (J/mol-K) with Respect to D at Reference Temperature
                     let twentyThirdValue = Double(0) // Specific Heat Capacity  (J/mol-K) with Respect to Inert at Reference Temperature
                     let twentyFourthValue = Double(273) // Reference Temperature (K) for Specific Heat Capacity and Heat of Formation
                     let twentyFifthValue = Double(5000) // Initial Moles of A | Initial Concentration of A | Mole Fraction of A
                     let twentySixthValue = Double(5000) // Initial Moles of B | Initial Concentration of B | Mole Fraction of B
                     let twentySeventhValue = Double(0)  // Initial Moles of Inert | Initial Concentration of Inert | Mole Fraction of Inert
                    let diameter = Double(0.127)
                        
//var x = 0.0
                      //  let h = 0.1
                        let b = Double(1) // upper bound
                        let a = Double(0) // lower bound
                        let N = Double(10) // number of steps
                        
                        let z_0 = Double(1.0)
                        let y_0 = Double(3.0)
                        
                        let h = Double((b - a)/N) // step size
                        
                        let k_0 = Double(h*z_0)
                        
                        
                        
//                       while x < 2.0 {
//
//                        }

// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
// &&&&&&&&&&&&&&&&&&& Ray Wederlich EULER Method Attempt &&&&&&&&&&&&&&&&&
// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
//                        //1
////                        typealias Solver = (Double, Double, Double, Double, Double) -> Void
//                       typealias Solver = (Double, Double, Double, Double, Double) -> (v: Double, x: Double, i: Double)
//
//                        //2
//                        struct HarmonicOscillator {
//                            var kSpring = 0.0
//                            var mass = 0.0
//                            var phase = 0.0
//                            var amplitude = 0.0
//                            var deltaT = 0.0
//
//                            init(kSpring: Double, mass: Double, phase: Double, amplitude: Double, deltaT: Double) {
//                                self.kSpring = kSpring
//                                self.mass = mass
//                                self.phase = phase
//                                self.amplitude = amplitude
//                                self.deltaT = deltaT
//                            }
//
//                            //3
//                            func solveUsingSolver(solver: Solver)  {
//                                solver(kSpring, mass, phase, amplitude, deltaT)
//                            }
////                            func solveUsingSolver(solver: Solver) -> (vold_solveUsingSolver: Double, xoldEuler_solveUsingSolver: Double, i_solveUsingSolver: Double) {
////                                solver(kSpring, mass, phase, amplitude, deltaT)
////
////
////                            }
//
//                        }
//
//
//                        let osci = HarmonicOscillator(kSpring: 0.5, mass: 10, phase: 10, amplitude: 50, deltaT: 0.1)
//                   //     osci.solveUsingSolver(solveExact)
//
//
//
////                        func solveEuler(amplitude: Double, phase: Double, kSpring: Double, mass: Double, t: Double) -> (vold: Double, xoldEuler: Double, i: Double) {
//                        //^^^^ WORKS WHEN RETURNING AS TUPLE, make sure to fix return statement if using this
//
//
//                        // this may need to go insid function, not sure trying to get plotting arrays working
//                        var vold_array = [Double]() //// implement if using "[Double]"
//                        var xoldEuler_array = [Double]() //// implement if using "[Double]"
//                        var i_array = [Double]() //// implement if using "[Double]"
//
//
//                              func solveEuler(amplitude: Double, phase: Double, kSpring: Double, mass: Double, t: Double) -> (vold: Double, xoldEuler: Double, i: Double) {    ////// FOR AN ARRAY
//
//
////                         func solveEuler(amplitude: Double, phase: Double, kSpring: Double, mass: Double, t: Double) -> (vold: Double, xoldEuler: Double, i: Double) { /////
//
//
//
//
//
//
//                            //1
//                            var x = amplitude * sin(phase)
//                            let omega = sqrt(kSpring / mass)
//                            var i = 0.0
//                            //2
//                            var v = amplitude * omega * cos(phase);
//                            var vold = v
//                            var xoldEuler = x
//
//                            print("i before While loop: \(i)")
//                            print("voldEuler: \(vold)")
//
//                            while i < 100 {
//                                print("i at START While loop: \(i)")
//                                //3
//                                v -= omega * omega  * x * t
//                                print("dv/dt : \(v)")
//                                //4
//                                x += vold * t
//                                xoldEuler = x
//                                print("dx/dt: \(x)")
//
//                                vold = v
//                                print("voldEuler (in While loop): \(vold)")
//                                 print("xoldEuler (in While loop): \(xoldEuler)")
//                                i+=t
//                                print("i at END While loop: \(i)")
//
//                                vold_array.append(vold) //// implement if using "[Double]"
//                                xoldEuler_array.append(xoldEuler) //// implement if using "[Double]"
//                                i_array.append(i) //// implement if using "[Double]"
//                            }
//
//                           // return (vold_array, xoldEuler_array, i_array)
//                     return (vold, xoldEuler, i)
//                        }
//
//
//                        let time =  solveEuler(amplitude: 50, phase: 10, kSpring: 0.5, mass: 10, t: 0.1)
////                      let(vold, xoldEuler, i) = osci.solveUsingSolver(solver: solveEuler)
//                     //   print(time.vold_array)
//            //            print(time.vold)
//
//                      //  print("v: \(time.v) x: \(time.x) i: \(time.i)")
//
//              //          print("v: \(time.vold) x: \(time.xoldEuler) i: \(time.i)") //// WORKS WHEN RETURNING AS TUPLE | Array ??
//                         print("v: \(time.vold) x: \(time.xoldEuler) i: \(time.i)")
//
//
//            print("vold_array     xoldEuler_array     i_array")
//            print("------------------------------------------")
//       print(String(format: "%11.6g  %11.2g %11.6g", vold_array,xoldEuler_array, i_array))
//      //      print(String(format: "%11.6g  %11.2g %11.6g", time.vold,time.xoldEuler, time.i))
//
////print(v,x,i)
//
//                      //  osci.solveEuler(amplitude: 50, phase: 10, kSpring: 0.5, mass: 10, t: 0.1)
//                       // print("xoldEuler_outside_of_function: \(v)")
// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
// &&&&&&&&&&&&&&&&&&& Quora Chris J. Howard Attempt &&&&&&&&&&&&&&&&&&&&&&&&&
// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                    
                 
                    /*
                     As a simple problem to solve, code up a solution
                     to the nonlinear pendulum problem. Link to solving
                     this problem numerically can be found at:
                     https://christianjhoward.me/blog/index.php/2016/08/15/predicting-the-future-an-intro-to-models-described-by-time-dependent-differential-equations/
                     */
                    
                    // define time related variable
                    var t: Double = 0.0
                    let dt: Double = 1e-2
                    let tf: Double = 20.0
                    
                    // define the starting state
                   var q: [Double] = [Double.pi/6.0, 0.0]
                 //       var q: (x: Double, y: Double) = (x: Double.pi/6.0, y: 0.0)
                   
                        var dx1_over_dt = [Double]()
                        var dx2_over_dt = [Double]()

                    // do simulation loop
                    while t <= tf {
                        //let t = i
                        // for i in TTRY PICKING UP HERE ANYTIME ON ORRR AFTER 05262018
                        // print message with progress //// This says "with PROGRESS"!!!! The print statement after while loop does not print with timesteps I thinkk
                        
                        print("t=\(t)s | q = \((180.0/Double.pi)*q)")
                
                        
                        // do Runge-Kutta update with closure defined dynamics
                        (t, q) = rk4(time: t, dt: dt, current_state: q){
                            let g = 9.81, l = 5.0, m = 2.0, c = 1.0     // material constants for pendulum
                          let x1 = $1[0], x2 = $1[1]
                            // grab the pendulum states
                       

                            return [x2, -((g/l)*sin(x1) + (c/m)*x2 )]   // compute the time derivatives
                        }
                    }
                        
                        dx1_over_dt.append(q.first!)
                        dx2_over_dt.append(q.last!)
                        
                        
                        print(dx1_over_dt)
                      //  print(\(dx1_over_dt))
                       // dx1_over_dt.append(q[0]) //// prints -0.0027229... ???
                        //  dx1_over_dt.append(q.first!)
                     //   let dx1_over_dt = q.first!
                      //  let dx2_over_dt = q.last!
                 //       let dx2_over_dt = [Double]()
                      //  dx2_over_dt.append(q[1]) //// prints -0.003875... ???
                   //      dx2_over_dt.append(-((g/l)*sin(x1) + (c/m)*x2 ))
                    // print final value
                  //  print("t=\(t)s | q = \((180.0/Double.pi)*q)") // THIS is DEFUALT CODE!!!! It prints out a list of values, however I am currentyl trying to set it up as an array instead? in attempt to try and graph the values
                        
                        
                        print(dx1_over_dt)
                       // print(Double(dx2_over_dt!))
                        print(dx2_over_dt)

                        self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    
                   // let y_every_iter_number : Double

//
                    //func dwarfsFromSnowWhite() -> [(x: Double, y: Double)] {
//
//                        for  (index, y_every_iter_number) in y.enumerated() {
//                            print("\(index + 50): \(y_every_iter_number)")
//                        //let y_every_iter_number = y_i
//
//                        }
//                        return [(x: x, y: y_every_iter_number)]
//
//                    }
//dwarfsFromSnowWhite()
                        
// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

        
         ///------------------
        switch selectedChart {
        case 0:
  
         //   let data1 = [(x: x,y: y_every_iter_numbe)]
            
             
            // Simple chart // LINE CHART
//          let data1 = [
//            // (x: 0.0, y: 0.0)
//            (x: 0.0, y: 0.0),
//            (x: 0.1, y: 0.1),
//            (x: 0.2, y: 0.2),
//            (x: 0.3, y: 0.3),
//            (x: 0.4, y: 0.4),
//            (x: 0.5, y: 0.5),
//            (x: 0.6, y: 0.6),
//            (x: 0.7, y: 0.7),
//            (x: 0.8, y: 0.8),
//            (x: 0.9, y: 0.9),
//            (x: 1.0, y: 1.0)
//          ]
     //       let data1: [Double] = [y]
       //     let data2: [Double] = [z]

//            let data1 = [
//                (x: t, y: q)
////                (x: time.i, y: time.vold)
//            ]
          //+++++++++++++++
//            let data2 = [
//              //  (x: time.i, y: time.xoldEuler)
//            ]
        
          //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        

        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        
     //  let series1 = ChartSeries(data1)
            
            
            ////                (x: time.i, y: time.vold)
            //            ]
        let series1 = ChartSeries(dx1_over_dt) //// works_1
            
          series1.color = UIColor.black
        // series1.color = ChartColors.blueColor()    //// default code colors
          series1.area = false
//
//            let series2 = ChartSeries(data: [y])
//            series2.color = UIColor.black
//            // series1.color = ChartColors.blueColor()    //// default code colors
//            series2.area = false
        
        // -----------------------------------------------------
        
          //chart.xLabels = [0, 3, 6, 9]
   // chart.xLabels = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]
          //  chart.xLabels = [0.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 90.0, 100.0, 110.0]
    chart.xLabels = [0.0, 2.0, 4.0, 6.0, 8.0, 10.0, 12.0, 14.0, 16.0, 18.0, 20.0]
        //   chart.xLabels = x_data
            
         chart.minX = 0.0
        chart.maxX = 20.0
        //  chart.xLabelsFormatter = { String(Int(round($1))) + "x, benzene" }
         // chart.add(series)
   //     chart.yLabelsFormatter = { String(Int($1)) +  "ºC" } //not sure how this line works, but it subscripts the degree symbol on the y-axis. However, I think I am going to use Kelvin on the Y-Axis
      //chart.yLabels = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]
       chart.yLabels = [-50.0, -25.0, 0.0, 25.0, 50.0]
            chart.minY = -50.0
         chart.maxY = 50.0
        //  chart.yLabelsFormatter = { String(Int($1)) +  "y, benzene" }
//          let series = ChartSeries(data: data)
//          chart.add(series)
            
            //#################################################################PICK UP / START  HERE 05222018 0042#############################################################################
            
          // PICK UP / START  HERE 05222018 0042
       // chart.add([y, z])
          //  let series1 = ChartSeries(data: y)
            
           chart.add(series1)
            //##########################################################################################################################################################################################
            
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



//=============================================================================
//====Random Runge-Kutta algorithm notes from my VBA assignments in CHE_372====
//=============================================================================

//                    Function f1(x As Double, y1 As Double, y2 As Double)
//
//                    k = k_0 * Exp(-EA / 1.987 * (1 / y2 - 1 / T_k0))
//
//                    ra = -k * (CAO ^ 2) * (1 - y1) * (1 - y1)
//
//                    f1 = -ra / FAO * 3.14159 * D * D / 4
//
//                    End Function


//                    Function f2(x As Double, y1 As Double, y2 As Double)
//
//                    k = k_0 * Exp(-EA / 1.987 * (1 / y2 - 1 / T_k0))
//
//                    ra = -k * CAO ^ 2 * (1 - y1) * (1 - y1)
//
//                    '################### ADIABATIC ########################
//                    'Qrxn = (-DeltaHrxn + DeltaCp * (y2 - 273)) * (-ra)

//                    'Qexchanger = 0
//                    'f2 = (Qrxn + Qexchanger) / (2 * FAO * (CPa + CPb + y1 * DeltaCp))
//                    '########################################################

//=============================================================================
//=============================From EoS View Controllers=======================
//=============================================================================

//var rootArray = [Double]()
//var fvalueArray = [Double]()
//var fdvalueArray = [Double]()
//var solved = false
//
//if !solved
//{
//    // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
//    for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
//    {
//        var firstX = Double(0.07780 * secondValue! / firstValue!) //INITIAL GUESS
//        var baseValue = Double()
//        var derValue = Double()
//        //                        var i = Double()
//        if i == 0
//
//        {
//
//            // EoS liquid and liquid like set to zero
//            baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
//
//            // derivative of above set to zero
//            derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
//
//
//
//            rootArray.append(firstX)
//            fvalueArray.append(baseValue)
//            fdvalueArray.append(derValue)
//        }
//        else
//        {
//            firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
//
//            // EoS liquid and liquid like set to zero
//            baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
//
//            // derivative of above set to zero
//            derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
//
//            rootArray.append(firstX)
//            fvalueArray.append(baseValue)
//            fdvalueArray.append(derValue)
//
//            //print(fdvalueArray)
//
//            if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
//            {
//                print("solved after \(i)th iteration")
//
//
//                print("Root is: \(rootArray[i])")
//
//                solved = true
//                break
//
//            }
//            myLabel4.text = "Compressibility Factor = \(rootArray[i])"
//}
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
// &&&&&&&&&&&&&&&&&&& Quora Chris J. Howard Attemp &&&&&&&&&&&&&&&&&&&&&&&&&
// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

// specify some operator overloading to make
// the following algos simple
func *(scalar: Double, vector: [Double]) -> [Double] {
    var output: [Double] = vector;
    for idx in 0...output.count-1 { output[idx] *= scalar; }
    return output
}
func *(vector: [Double], scalar: Double) -> [Double] {
    var output: [Double] = vector;
    for idx in 0...output.count-1 { output[idx] *= scalar; }
    return output
}

// define function to do a Runge-Kutta 4 update
func rk4(time t: Double,
         dt: Double,
         current_state q: [Double],
         f: (Double,[Double])->[Double])
    -> (new_time: Double, new_state: [Double])
{
    let k1 = dt*f(t, q)
    let k2 = dt*f(t + 0.5*dt, q + 0.5*k1)
    let k3 = dt*f(t + 0.5*dt, q + 0.5*k2)
    let k4 = dt*f(t + dt, q + k3)
    var qn: [Double] = q
    for idx in 0...q.count-1 { qn[idx] += (k1[idx] + 2.0*(k2[idx] + k3[idx]) + k4[idx] )/6.0 }
    return (t + dt, qn)
}




/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
///////// EVERYTHING BELOW ARE RANDOM RUNGE-KUTTA ALGORITHM ATTTEMPTS! //////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ATTEMPT FROM https://rosettacode.org/wiki/Runge-Kutta_method#MATLAB %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//                        func rk4(dx: Double, x: Double, y: Double, f: (Double, Double) -> Double) -> Double {
//                            let k1 = dx * f(x, y)
//                            let k2 = dx * f(x + dx / 2, y + k1 / 2)
//                            let k3 = dx * f(x + dx / 2, y + k2 / 2)
//                            let k4 = dx * f(x + dx, y + k3)
//
//                            return y + (k1 + 2 * k2 + 2 * k3 + k4) / 6
//                        }
//
//                      //  var y = [Double]() //// works1
//                    var y = [Double]()
//                        var x_data = [Double]() // NOT default
//                        var x: Double = 0.0
//                        var y2: Double = 0.0
//
//                        var x0: Double = 0.0
//                        var x1: Double = 10.0
//                        var dx: Double = 0.1
//
//                        var i = 0
//                        var n = Int(1 + (x1 - x0) / dx)
//
//                        y.append(1)
//                        for i in 1..<n {
//                            y.append(rk4(dx: dx, x: x0 + dx * (Double(i) - 1), y: y[i - 1]) { (x: Double, y: Double) -> Double in
//                                return x * sqrt(y)
//                            })
//                        }
//
//                        print(" x         y        rel. err.")
//                        print("------------------------------")
//
//                        for i in stride(from: 0, to: n, by: 1){
//                                                        // "from: 0, to: n, by: 1"    works!
//                                                        // "from: 0, to: 10, by: 1"    doesnt work!
//                                                        // "from: 0, to: 100, by: 1"    doesnt work!
//
//                                                        // NOTE: I think you have to remove the "Double()" from "Double(i)" if you make "by" 0.1 instead of an integer
//                   x = x0 + dx * Double(i)
//
//                    y2 = pow(x * x / 4 + 1, 2) // for exact solution error
//                    x_data.append(x)
//
//                    print(String(format: "%2g  %11.6g  %11.5g", x, y[i], y[i]/y2 - 1))
//                                                    }

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


//                        ////// PART OF DEFAULT FOR ONE DIFF EQ./////////
//                        func rk4(dx: Double, x: Double, y: Double, f: (Double, Double) -> Double) -> Double {
//                            let k1 = dx * f(x, y)
//                            let k2 = dx * f(x + dx / 2, y + k1 / 2)
//                            let k3 = dx * f(x + dx / 2, y + k2 / 2)
//                            let k4 = dx * f(x + dx, y + k3)
//
//                            return y + (k1 + 2 * k2 + 2 * k3 + k4) / 6
//                        }
//                        //////////////////////////////////////////

// x
//0
//0.100000000000000
//0.200000000000000
//0.300000000000000
//0.400000000000000
//0.500000000000000
//0.600000000000000
//0.700000000000000
//0.800000000000000
//0.900000000000000
//1
//// y
//3
//3.18363750000000
//3.53247612140625
//4.05081431539730
//4.75226721823678
//5.65966146896691
//6.80546857718615
//8.23275046870215
//9.99662273396966
//12.1662702836266
//14.8275785099690
//// z
//1
//2.66308750000000
//4.32075123578125
//6.06862161724809
//7.99840660307529
//10.2035269591586
//12.7843136509464
//15.8531072476850
//19.5395612578319
//23.9964342912478
//29.4061568866877

//                        var l1 : Double
//var l2 : Double
//                        var l3 : Double
//                        var l4 : Double
//                        var k1 : Double
//                        var k2 : Double
//                        var k3 : Double
//                        var k4 : Double
//                        var constant_for_z : Double
//                        var constant_for_y : Double


// SEE ABOVE!!!!!!!! for DEFAULT section !!!!!
//                        func rk4(dx: Double, x: Double, y: Double, z: Double, f: (Double, Double, Double) -> Double) -> Double {
// NOTE: Not sure yet, but the "-> Double" may need to be "-> [Double]" or vice-versa, just may need to try different combinations

//     func rk4(dx: Double, x: Double, y: Double, z: Double, f: (Double, Double, Double) -> Double) -> Double {
// default ^^^^^

// func rk4(dx: Double, x: Double, y: Double, f: (Double, Double) -> Double) -> Double {
//
//                       //RANDOM
//                           // RK4step(y: [Double], f: ([Double], Double) -> [Double], t: Double, h: Double) -> [Double]
//
////                        func rk4(dx: Double, x: Double, y: Double, z: Double, f: (Double, Double, Double) -> Double) -> Double {
//                            //func rk4(dx: Double, x: Double, y: Double, z: Double, f: (Double, Double, Double) -> Double) -> [Double] {
//                            // NOTE: Not sure yet, but the "-> Double" may need to be "-> [Double]" or vice-versa, just may need to try different combinations
//
//                            //     func rk4(dx: Double, x: Double, y: Double, z: Double, f: (Double, Double, Double) -> Double) -> Double {
//                            // default ^^^^^
//
//
//
//                            //RANDOM
//                            // RK4step(y: [Double], f: ([Double], Double) -> [Double], t: Double, h: Double) -> [Double]
//
//                            //                        func rk4(dx: Double, x: Double, y: Double, z: Double, f: (Double, Double, Double) -> Double) -> Double {
//                            //
//                             //func rk4_nested(dx: Double, x: Double, y: Double, z: Double, f: (Double, Double, Double) -> Double) -> Double {
//                          //  let k1 = dx * f(x, y, z)
//                            let k1 = dx * f(x, y)
//                       //     let l1 = dx * f(x, y, z)
//
//                            //let k2 = dx * f(x + dx / 2, y + k1 / 2, z + k1 / 2)
//                            let k2 = dx * f(x + dx / 2, y + k1 / 2)
//
//                      //      let l2 = dx * f(x + dx / 2, y + k1 / 2, z + l1 / 2)
//
//                            //let k3 = dx * f(x + dx / 2, y + k2 / 2, z + k2 / 2)
//                            let k3 = dx * f(x + dx / 2, y + k2 / 2)
//
////                            let l3 = dx * f(x + dx / 2, y + k2 / 2, z + l2 / 2)
//
//                            //let k4 = dx * f(x + dx, y + k3, z + k3)
//                                let k4 = dx * f(x + dx, y + k3)
//
//                             //   let l4 = dx * f(x + dx, y + k3, z + l3)
//
//
////let constant_for_z = l1 + 2.0 * l2 + 2.0 * l3 + l4
//
//                    //  let l1 = dx * f(x, y, z)
//
//                 //   let l2 = dx * f(x + dx / 2, y + k1 / 2, z + k1 / 2)
//
//                     //  let l3 = dx * f(x + dx / 2, y + k2 / 2, z + k2 / 2)
//
//                //        let l4 = dx * f(x + dx, y + k3, z + k3)
//
//                                let constant_for_y = k1 + 2.0 * k2 + 2.0 * k3 + k4
//                                return (y + (constant_for_y) / 6)
//                      //   return (y + (k1 + 2 * k2 + 2 * k3 + k4) / 6) ////DEFAULT ^^^^^^^^^^^
//                        }
//                         //   return (z + (l1 + 2.0 * l2 + 2.0 * l3 + l4) / 6)
//
//
//                       // }
//
//
//
//                        var y = [Double]()
//                        var z = [Double]() // for second Diff. Eq.
//
//                        var x: Double = 0.0
//                        //  var x: Double = 1.0
//
//
//
//
//                        var y2: Double = 0.0
//
//                        var x0: Double = 0.00 // lower/start bound I thinkk
//                    var x1: Double = 100.0 // upper/finish bound I  thinkk          --> works example 1
//                    //    var x1: Double = 1.0 // upper/finish bound I  thinkk
//                        var dx: Double = 0.1 //iterative step I thinkkk
//
//                        var i = 0
//                        var n = Int(1 + (x1 - x0) / dx)
//
//                        y.append(3) // Initial Value for dy/dx at x=0 ??
//                        z.append(1) // Initial Value for dz/dx at x=0 ??
//
//                        // y.append(1) // default Initial Value for dy/dx at x=0 ??
//
//
//
//
//
//
//
//
////                        for i in 1..<n {
//////                            z.append(rk4_nested(dx: dx, x: x0 + dx * (Double(i) - 1), y: y[i - 1], z: z[i - 1]) { (x: Double, y: Double, z: Double) -> Double in
//////                                return z
//////                               // return 6.0*y - z //// --> works example 1
//////                                //   return y
//////                            })
//                        for i in 1..<n {
//                            y.append(rk4(dx: dx, x: x0 + dx * (Double(i) - 1), y: y[i - 1] { (x: Double, y: Double) -> Double in
//                                return x + sqrt(y)
//                                }
//                                // return 6.0*y - z //// --> works example 1
////                                //   return y
////                            })
////
////                        }
//
//
//
//                        print(" x        y        z     rel. err.")
//                        print("----------------------------------")
//
////                        for (var i = 0; i < n; i += 10) {
////                            x = x0 + dx * Double(i)
////                            y2 = pow(x * x / 4 + 1, 2)
////
////                            print(String(format: "%2g  %11.6g    %11.5g", x, y[i], y[i]/y2 - 1))
////                        }
//
//                        for i in stride(from: 0, to: n, by: 1){
//                            // "from: 0, to: n, by: 1"    works!
//                            // "from: 0, to: 10, by: 1"    doesnt work!
//                            // "from: 0, to: 100, by: 1"    doesnt work!
//
//                            // NOTE: I think you have to remove the "Double()" from "Double(i)" if you make "by" 0.1 instead of an integer
//                            x = x0 + dx * Double(i)
//                            y2 = pow(x * x / 4 + 1, 2) // for exact solution error
//
//                            print(String(format: "%2g  %11.6g  %11.2g  %11.5g", x, y[i], z[i] ,y[i]/y2 - 1))
//                        }
//
//
////                    y = RK4step(y:y, f:deriv, t:t, h:h)
////                    t += h
////                                                    print("t: \(t), y: \(y[0]) exact: \(exp(t))\n")
////                                                }


// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
// ^^^^^^^^^ATTEMPT Stack Exchange^^^^^^^^^^^^^^
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


//                    func RK4step(y: [Double], f: ([Double], Double) -> [Double], t: Double, h: Double) -> [Double] {
//
//                        let length = y.count
//
//                        var w = [Double](repeating: 0.0, count: length )
//                        var result = [Double](repeating: 0.0, count: length)
//
//                        let k1 = f(y,t)
//                        assert(k1.count == y.count, "States and Derivatives must be the same length")
//                        for i in 0..<length { w[i] = y[i] + 0.5*h*k1[i]  }
//                        let k2 = f(w, t+0.5*h)
//                        for i in 0..<length { w[i] = y[i] + 0.5*h*k2[i]  }
//                        let k3 = f(w,t+0.5*h)
//                        for i in 0..<length { w[i] = y[i] + h*k3[i]
//                        }
//                        let k4 = f(w,t+h)
//
//                        for i in 0..<length {
//                            result[i] = y[i] + (k1[i] + 2.0*k2[i] + 2.0*k3[i] + k4[i])*h/6.0
//                        }
//                        print(result)
//                        return result;
//                    }
//
//
//
//                    func test_exp(){
//                        // Integrate: y' = y
//                        // y_0 = 1.0
//                        // from 0 to 2.0
//
////                        var y = [150.0, 5.0]
////
////                        let a = 5.0
////                        let b = 1.0
////                        let eps = 0.1
////                        let m = 5.0
//                        var y = [0.0, 300.0]
//
//
//                        func deriv (y: [Double], t: Double) -> [Double] {
//                            let p = y[0]
//                            let q = y[1]
//                            print("p = \(p)")
//                            print("q = \(q)")
//
//                            //var y = [0.0, 300.0]
//
//                            let DeltaCp = Double((thirteenthValue/tenthValue)*twentySecondValue + (twelthValue/tenthValue)*twentyFirstValue - ((eleventhValue/tenthValue)*twentiethValue + (tenthValue/tenthValue)*nineteenthValue))
//                            print("DeltaCp: \(DeltaCp)")
//                            print("p_checkpoint_1 = \(p)")
//                            print("q_checkpoint_1 = \(q)")
//
//                            //
//                            let DeltaHrxn = Double((thirteenthValue/tenthValue)*seventhteenthValue + (twelthValue/tenthValue)*sixthteenthValue - ((eleventhValue/tenthValue)*fifthteenthValue + (tenthValue/tenthValue)*fourteenthValue))
//                            let DeltaHrxn_MODIFIED = Double(DeltaCp*(q - twentyFourthValue))
//
////                            let DeltaHrxn_FINAL = Double(DeltaHrxn + DeltaHrxn_MODIFIED)
//                            let DeltaHrxn_FINAL = Double(DeltaHrxn)
//                            print("DeltaHrxn: \(DeltaHrxn)")
//                            print("DeltaHrxn_MODIFIED: \(DeltaHrxn_MODIFIED)")
//                        //    print("DeltaHrxn_Final: \(DeltaHrxn_FINAL)")
//                            //   NEED TO ADJUST ONCE I FIGURE ALGORITHM OUT
//                        print("DeltaHrxn_Final: \(DeltaHrxn)")
//// NEED TO ADJUST ALSO!! !!!!
//                            ////////////////////////////////////////
//                            let summation_of_theta_times_Cp = Double((twentyFifthValue/twentyFifthValue)*nineteenthValue + (twentySixthValue/twentyFifthValue)*twentiethValue+(twentySeventhValue/twentyFifthValue)*twentyThirdValue) // ENTERING components ONLY plussss INERT!!!!!!!
//
//                            let denominator_for_Qexchanger = Double(2.0 * sixthValue * seventhValue * (nineteenthValue + twentiethValue + p * DeltaCp))
//                            /////////////////////////////////////////
//                            print("summation_of_theta_times_Cp: \(summation_of_theta_times_Cp)")
//                            //end general
//
//                            let k = Double(fifthValue * (pow(2.71828182846, firstValue * (1 / thirdValue - 1 / q)/secondValue)))
//
//                            print("k: \(k)")
//                            let ra = Double(-k * (pow(sixthValue*(twentyFifthValue/twentyFifthValue-tenthValue*p), eighthValue)) * (pow(sixthValue*(twentySixthValue/twentyFifthValue-eleventhValue*p), ninthValue)))
//                            print("ra: \(ra)")
//                            let dX_over_dV = Double(-ra/(sixthValue*seventhValue))
//                            print("dX_over_dV: \(dX_over_dV)")
//
//                            let Qrxn = Double((-DeltaHrxn_FINAL + DeltaCp * (q - twentyFourthValue)) * -ra * 3.14159 * diameter * diameter / 4.0 )
//
//                            print("Qrxn: \(Qrxn)")
//
//                            let Qexchanger = Double(0) // "0" if no heat exchanger fluid
//
//                            print("Qexchanger: \(Qexchanger)")
//
//                      //      let dT_over_dV = Double((Qrxn + Qexchanger) / (sixthValue*seventhValue * (summation_of_theta_times_Cp + DeltaCp * p)))
//
//                            let dT_over_dV = Double((Qrxn + Qexchanger) / denominator_for_Qexchanger)
//
//
//
//                            print("dT_over_dV: \(dT_over_dV)")
//
//                            print("p_checkpoint_2 = \(p)")
//                            print("q_checkpoint_2 = \(q)")
//
//                            return [ -ra/(sixthValue*seventhValue), (Qrxn + Qexchanger) / (denominator_for_Qexchanger) ]
//
//
//
//                        }
//
//
//
//                        var t = 0.0
//                      let h = 2.0
//
//                        while t < 100.0 {
//                            //var y = [0.0, 300.0]
//
//                            y = RK4step(y:y, f:deriv, t:t, h:h)
//                            t += h
//                            print("t: \(t), y: \(y[0]) exact: \(exp(t))\n")
//                        }
//                      //  var y = [0.0, 300.0]
//
//                        let exact = exp(2.0)
//                        let error = abs(y[0] - exact)
//
//                        assert(error < pow(h, 4.0))
//                        print("y: \(y[0]) exact: \(exact) error: \(error)\n")
//
//                    }
//
//
//                    print("testing...\n")
//
//                    test_exp()
//

// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

//                    myLabel1.text = "Activation Energy = \(ActivationEnergy) J/mol"

// ........................
//    for x in stride(from: 0, to: 100, by: 2) {
//                        print(x)
//        let stepsize = Double(2.0)

// $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//$$$$$$$$$$$$$$$$$$$$$ VBA algorithm attempt $$$$$$$$$$
// $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//       //------ Function 1 -----
//           func dX_over_dV(firstParameterName: Double, secondParameterName: Double, thirdParameterName: Double) {
//                //general
//                let DeltaCp = Double((thirteenthValue!/tenthValue!)*twentySecondValue! + (twelthValue!/tenthValue!)*twentyFirstValue! - ((eleventhValue!/tenthValue!)*twentiethValue! + (tenthValue!/tenthValue!)*nineteenthValue!))
//
//                let DeltaHrxn = Double((thirteenthValue!/tenthValue!)*seventhteenthValue! + (twelthValue!/tenthValue!)*sixthteenthValue! - ((eleventhValue!/tenthValue!)*fifthteenthValue! + (tenthValue!/tenthValue!)*fourteenthValue!)) + DeltaCp*(thirdParameterName - twentyFourthValue!)
//
//                let summation_of_theta_times_Cp = Double((twentyFifthValue!/twentyFifthValue!)*nineteenthValue! + (twentySixthValue!/twentyFifthValue!)*twentiethValue!+(twentySeventhValue!/twentyFifthValue!)*twentyThirdValue!) // ENTERING ONLY
//                //end general
//                let k = Double(fifthValue! * (pow(2.71828182846, firstValue! * (1/thirdValue! - 1 / thirdParameterName)/secondValue!)))
//
//
//                let ra = Double(-k * (pow(sixthValue!*(twentyFifthValue!/twentyFifthValue!-tenthValue!*secondParameterName), eighthValue!)) * (pow(sixthValue!*(twentySixthValue!/twentyFifthValue!-eleventhValue!*secondParameterName), ninthValue!)))
//
//                let dX_over_dV = Double(-ra/(sixthValue!*seventhValue!))
//        }
//        //----------------------
//        //------ Function 2 ----
//        func dT_over_dV(firstParameterName: Double, secondParameterName: Double, thirdParameterName: Double) {
//
//            let DeltaCp = Double((thirteenthValue!/tenthValue!)*twentySecondValue! + (twelthValue!/tenthValue!)*twentyFirstValue! - ((eleventhValue!/tenthValue!)*twentiethValue! + (tenthValue!/tenthValue!)*nineteenthValue!))
//
//            let DeltaHrxn = Double((thirteenthValue!/tenthValue!)*seventhteenthValue! + (twelthValue!/tenthValue!)*sixthteenthValue! - ((eleventhValue!/tenthValue!)*fifthteenthValue! + (tenthValue!/tenthValue!)*fourteenthValue!)) + DeltaCp*(thirdParameterName - twentyFourthValue!)
//
//            let summation_of_theta_times_Cp = Double((twentyFifthValue!/twentyFifthValue!)*nineteenthValue! + (twentySixthValue!/twentyFifthValue!)*twentiethValue!+(twentySeventhValue!/twentyFifthValue!)*twentyThirdValue!) // ENTERING ONLY
//
//            let k = Double(fifthValue! * (pow(2.71828182846, firstValue! * (1/thirdValue! - 1 / thirdParameterName)/secondValue!)))
//
//
//            let ra = Double(-k * (pow(sixthValue!*(twentyFifthValue!/twentyFifthValue!-tenthValue!*secondParameterName), eighthValue!)) * (pow(sixthValue!*(twentySixthValue!/twentyFifthValue!-eleventhValue!*secondParameterName), ninthValue!)))
//
//                let Qrxn = Double(-DeltaHrxn + DeltaCp * (thirdParameterName - twentyFourthValue!) * -ra)
//
//                let Qexchanger = Double(0) // no heat exchanger fluid
//
//                let dT_over_dV = Double((Qrxn + Qexchanger) / (sixthValue!*seventhValue! * (summation_of_theta_times_Cp + DeltaCp * thirdParameterName)))
//
//          //  someFunction(firstParameterName: x,  secondParameterName: dX_over_dV, thirdParameterName: dT_over_dV)
//
//        }
//        //----------------------
//
//
//
//           func someBIGGERFunction(firstParameterName_i: Double, secondParameterName_i: Double, thirdParameterName_i: Double, fourthParameterName_i: Double) {
//
//            let firstParameterName_i = Double(0.0)
//            let secondParameterName_i = Double(sixthValue!)
//            let thirdParameterName_i = Double(thirdValue!)
//            let fourthParameterName_i = Double(stepsize)
//
//
//            let k1_f1 = dX_over_dV(firstParameterName: firstParameterName_i,  secondParameterName: secondParameterName_i, thirdParameterName: thirdParameterName_i)
//
//                           //   let k1_f1 = f1(firstParameterName_i, secondParameterName_i, thirdParameterName_i)
//            let k1_f2 = dT_over_dV(firstParameterName: firstParameterName_i,  secondParameterName: secondParameterName_i, thirdParameterName: thirdParameterName_i)
//
//            let k1_f1_double = dX_over_dV
//            let k1_f2_double = dT_over_dV
//
//
//
//            let k2_f1 = dX_over_dV(firstParameterName: firstParameterName_i + fourthParameterName_i / 2.0, secondParameterName: secondParameterName_i + k1_f1_double * fourthParameterName_i / 2.0, thirdParameterName: thirdParameterName_i + k1_f2_double * fourthParameterName_i / 2.0)
//            let k2_f2 = dT_over_dV(firstParameterName: firstParameterName_i + fourthParameterName_i / 2.0, secondParameterName: secondParameterName_i + k1_f1 * fourthParameterName_i / 2.0, thirdParameterName: thirdParameterName_i + k1_f2 * fourthParameterName_i / 2.0)
//
//
//                              let k3_f1 = dX_over_dV(firstParameterName: firstParameterName_i + fourthParameterName_i / 2, secondParameterName_i + k2_f1 * fourthParameterName_i / 2, thirdParameterName_i + k2_f2 * fourthParameterName_i / 2)
//                              let  k3_f2 = dT_over_dV(firstParameterName_i + fourthParameterName_i / 2, secondParameterName_i + k2_f1 * fourthParameterName_i / 2, thirdParameterName_i + k2_f2 * fourthParameterName_i / 2)
//
//
//                              let  k4_f1 = dX_over_dV(firstParameterName_i + fourthParameterName_i, secondParameterName_i + k3_f1 * fourthParameterName_i, thirdParameterName_i + k3_f2 * fourthParameterName_i)
//                              let k4_f2 = dT_over_dV(firstParameterName_i + fourthParameterName_i, secondParameterName_i + k3_f1 * fourthParameterName_i, thirdParameterName_i + k3_f2 * fourthParameterName_i)
//
//
//                            let y1 = secondParameterName_i + (k1_f1 + 2 * k2_f1 + 2 * k3_f1 + k4_f1) * fourthParameterName_i / 6
//                            let y2 = thirdParameterName_i + (k1_f2 + 2 * k2_f2 + 2 * k3_f2 + k4_f2) * fourthParameterName_i / 6
//
//
//                    }
//
//        someBIGGERFunction(firstParameterName_i: 0.0,  secondParameterName_i: sixthValue!, thirdParameterName_i: thirdValue!, fourthParameterName_i: 2.0)
//
//    }

// ************** THIS SECTION WORKS LIKE THE ABOVE SECTION, but trying above method first **************
//                    func function1() -> (firstParameterName: Double, secondParameterName: Double, thirdParameterName: Double) {
//                        for x in stride(from: 0, to: 100, by: 2) {
//                            print(x)
//                            let stepsize = Double(2.0)
//
//                        let firstParameterName = x
//                        let secondParameterNamete = dX_over_dV
//                        let thirdParameterName = dT_over_dV
//                        return ( firstParameterName, secondParameterNamete, thirdParameterName)
//                        }
//                    }
// ********************************************************************************************************


//                    Function RK_3(xi As Double, y1i As Double, y2i As Double, h As Double)
//
//
//                    loadvar
//
//                    Dim arr(3) As Variant
//                    '------------------
//
//            var rootArray = [Double]()

//  //                  k1_f1 = f1(xi, y1i, y2i)
//   //                 k1_f2 = f2(xi, y1i, y2i)

//   //                 k2_f1 = f1(xi + h / 2, y1i + k1_f1 * h / 2, y2i + k1_f2 * h / 2)
// //                   k2_f2 = f2(xi + h / 2, y1i + k1_f1 * h / 2, y2i + k1_f2 * h / 2)


//     //               k3_f1 = f1(xi + h / 2, y1i + k2_f1 * h / 2, y2i + k2_f2 * h / 2)
//       //             k3_f2 = f2(xi + h / 2, y1i + k2_f1 * h / 2, y2i + k2_f2 * h / 2)


//         //           k4_f1 = f1(xi + h, y1i + k3_f1 * h, y2i + k3_f2 * h)
//           //         k4_f2 = f2(xi + h, y1i + k3_f1 * h, y2i + k3_f2 * h)

//
//             //       y1 = y1i + (k1_f1 + 2 * k2_f1 + 2 * k3_f1 + k4_f1) * h / 6
//         //           y2 = y2i + (k1_f2 + 2 * k2_f2 + 2 * k3_f2 + k4_f2) * h / 6
//
//            //        arr(0) = y1
//           //         arr(1) = y2

//        // rootArray[0] = y1
//      // rootArray[1] = y2
//              //      RK_3 = arr
//                 //   End Function


// $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
// $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
// $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
