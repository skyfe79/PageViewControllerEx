//
//  YellowViewController.swift
//  PageViewControllerEx
//
//  Created by burt.k(Sungcheol Kim) on 2016. 1. 28..
//  Copyright © 2016년 burt. All rights reserved.
//

import UIKit

class YellowViewController: PageContentViewController {
    
    static func viewController() -> YellowViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(String(self)) as! YellowViewController
        return vc
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
