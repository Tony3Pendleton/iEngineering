//
//  CalcViewController.swift
//  CalculatorRPN
//
//  Created by Ahdab Nasir on 25/02/2016.
//  Copyright © 2016 Ahdab Nasir. All rights reserved.
//

import UIKit

class CalculatorTapeViewController: UIViewController {
    
    
    @IBOutlet weak var calcTape: UITextView!
    
    var getTape = Array<String>()
    //let calcTape = "Hello"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        for line in getTape {
            calcTape.text = calcTape.text + line
        }

        self.navigationController?.isNavigationBarHidden = false
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        
        label.backgroundColor = .white
        
        label.numberOfLines = 3
        
        label.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        label.textAlignment = .center
        
        label.textColor = .black
        
        label.text = "History"
        label.font = UIFont(name: "HelveticaNeue", size: 20)
        
        
        self.navigationItem.titleView = label /////NORMAL/DEFAULT
        
        customizeNavBar()
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
  
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}













////
////  LeftViewController.swift
////  SidebarOverlayExample
////
////  Created by Alex Krzyżanowski on 09.01.16.
////  Copyright © 2016 Alex Krzyżanowski. All rights reserved.
////
//
//import UIKit
//
//
//class CalculatorTapeViewController: UIViewController {
//
//
////// """""""""""""""""""""""""""""""""""""" 1
//
//    //@IBOutlet weak var tableView: UITableView!
//
//
//    //@IBOutlet weak var tapeLabel: UILabel!
//
//
////// """""""""""""""""""""""""""""""""""""" 1 end default
//
//    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//
//    //@IBOutlet weak var calcTape: UITextView!
//
//    var getTape = Array<String>()
////    var myCustomViewController: myCalculatorViewController = myCalculatorViewController(nibName: nil, bundle: nil)
////    var getThatValue = myCalculatorViewController()
//
//    // ...........................................2b
//    var theStruct = "";
//    // ...........................................2b end
//
//    @IBOutlet weak var tapeLabel: UILabel!
//
//    override func viewDidLoad() {
//            super.viewDidLoad()
//            //::::
//            // ??????
//            //let selectionVC = storyboard?.instantiateViewController(withIdentifier: "myCalculatorViewController") as! myCalculatorViewController
//           // selectionVC.selectionDelegate = self  //????? 2
//            // ????? 2
////            for line in getTape {
////                calcTape.text = calcTape.text + line + "\r\n"
////            } // default for-loop in RPN calculator
//
//            //:::: end
//            self.navigationController?.isNavigationBarHidden = false
//            // Do any additional setup after loading the view.
////             print("\(getThatValue.calculatorTape_write_ARRAY)")
//
//
//    // ...........................................1b
//    for i in stride(from: 0, to: myCalculatorViewController.GlobalVariable.myStruct.count, by: 1) {
//        print(myCalculatorViewController.GlobalVariable.myStruct[i]);
//            theStruct += " " + myCalculatorViewController.GlobalVariable.myStruct[i] as String;
//     //  tapeLabel.text = theStruct
//       self.tapeLabel.text = "Yolo"
//
//        tapeLabel.backgroundColor = .red
//        tapeLabel.numberOfLines = 3
//        tapeLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
//        tapeLabel.textAlignment = .center
//       // label.center = CGPoint(x: 0, y: 0)
//        tapeLabel.textColor = .white
//
//    }
//    // ...........................................1b end
//
//
//}
//
//    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//
////// """""""""""""""""""""""""""""""""""""" 2
//
//
//
//
////    func numberOfSections(in tableView: UITableView) -> Int {
////        return 1
////    }
////
////    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        return 10
////    }
////
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        let cell = tableView.dequeueReusableCell(withIdentifier: "menuItemCell")!
////        cell.textLabel?.text = "Menu Item #\(indexPath.row + 1)"
////        return cell
////    }
////
////    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CalculatorViewController") //was topScreen
////
////        DispatchQueue.main.async {
////            self.so_containerViewController?.topViewController = vc
////        }
////    }
////// """""""""""""""""""""""""""""""""""""" 2 end default
//}
////????
////extension CalculatorTapeViewController: SideSelectionDelegate {
////    func didTapChoice(name: String) {
////        calcTape.text = name
////        print(calcTape)
//// ????? 1
////        calcTape.textColor = UIColor.white
////    }
////}
////??? end
