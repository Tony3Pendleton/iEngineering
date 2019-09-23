//
//  newTest_RootPageViewControllerLandscapePageViewViewControllersViewController.swift
//  StackOverFlowQuestionPageViewEmbedByContainer
//
//  Created by Anthony Pendleton on 9/20/18.
//  Copyright © 2018 Jawbone. All rights reserved.
//

import UIKit

    
    class rootPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        
        
        //*********** TUTORIALS ********
        // https://www.youtube.com/watch?v=jVBtDH6jjl8&frags=pl%2Cwn
        // https://www.youtube.com/watch?v=RVAtqQ8CyKM&frags=pl%2Cwn
        //******************************
        
        private lazy var viewControllerList: [UIViewController] = {
            
            let sb = UIStoryboard(name: "refactored_calculator_storyboard", bundle: nil)
            
            let vc1 = sb.instantiateViewController(withIdentifier: "instantiatedMagentaViewController")
            let vc2 = sb.instantiateViewController(withIdentifier: "instantiatedOrangeViewController")
            let vc3 = sb.instantiateViewController(withIdentifier: "instantiatedCyanViewController")
            let vc4 = sb.instantiateViewController(withIdentifier: "instantiatedYellowViewController")
            
            return [vc1, vc2, vc3, vc4]
        }()
        //self.view.addSubview(vc1)
        
        var pageControl = UIPageControl()
        // var testView = UIView()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //        if #available(iOS 11.0, *) {
            //            scrollView.contentInsetAdjustmentBehavior = .automatic
            //        } else {
            //            automaticallyAdjustsScrollViewInsets = false
            //        }
            self.dataSource = self
            
            self.delegate = self
            configurePageControl()
            //    configureTestView()
            
            if let firstViewController = viewControllerList.first {
                self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
                
                
            }
            
            
            //        self.addChildViewController(vc1)
            //        self.addChildViewController(vc2)
            //        self.addChildViewController(vc3)
            
            
        }
        

        //    override func viewWillAppear(_ animated: Bool) {
        ////        dataSource = self
        ////        delegate = self
        ////        configurePageControl()
        //
        //    }
        //    override func viewWillDisappear(_ animated: Bool) {
        //        dataSource = nil
        //        //delegate = self
        //        //configurePageControl()
        //
        //    }
        
        
        
        
        // UIScreen.main.bounds.maxY - 50
        func configurePageControl() {
            pageControl = UIPageControl(frame: CGRect(x: 0, y: 10, width: UIScreen.main.bounds.width, height: 20))
            pageControl.numberOfPages = viewControllerList.count
            pageControl.currentPage = 0
            pageControl.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.0)
            pageControl.tintColor = UIColor.black
            pageControl.pageIndicatorTintColor = UIColor.white
            pageControl.currentPageIndicatorTintColor = UIColor.darkGray
  
            self.view.addSubview(pageControl)
            
        
        }
        
   
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
            let previousIndex = vcIndex - 1
            //  guard previousIndex >= 0 else {return nil}
            guard previousIndex >= 0 else {return viewControllerList.last}
            guard viewControllerList.count > previousIndex else {return nil}
            return viewControllerList[previousIndex]
            
            
            
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
            let nextIndex = vcIndex + 1
            //   guard viewControllerList.count != nextIndex else {return nil} ////no looping of pages
            guard viewControllerList.count != nextIndex else {return viewControllerList.first}
            guard viewControllerList.count > nextIndex else {return nil}
            return viewControllerList[nextIndex]
            
            
        }
        
        
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers peviousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            
            
            let pageContentViewController = pageViewController.viewControllers![0]
            
            self.pageControl.currentPage = viewControllerList.index(of: pageContentViewController)!
            
            
        }
        
        //    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        //        view.setNeedsUpdateConstraints()
        //    }
        
}
