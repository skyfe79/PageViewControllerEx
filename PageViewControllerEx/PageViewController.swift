//
//  PageViewController.swift
//  PageViewControllerEx
//
//  Created by burt.k(Sungcheol Kim) on 2016. 1. 28..
//  Copyright © 2016년 burt. All rights reserved.
//

import UIKit


class PageViewController : UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    let pages = [
        BlueViewController.viewController(),
        YellowViewController.viewController(),
        BlueViewController.viewController(),
        YellowViewController.viewController(),
        BlueViewController.viewController(),
        YellowViewController.viewController(),
        BlueViewController.viewController(),
        YellowViewController.viewController(),
        BlueViewController.viewController(),
        YellowViewController.viewController(),
        BlueViewController.viewController(),
        YellowViewController.viewController()
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for (i, vc) in pages.enumerate() {
            vc.index = i
        }
        
    
        self.setViewControllers([pages[0]], direction: .Forward, animated: true, completion: nil)
        self.doubleSided = true
        
        self.dataSource = self
    }
    
    
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let vc = (viewController as! PageContentViewController)
        if vc.index == 0 {
            return nil
        }
        
        return pages[vc.index-1]
    }

    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = (viewController as! PageContentViewController)
        if vc.index == pages.count - 1 {
            return nil
        }
        
        return pages[vc.index+1]
        
    }
    
}
