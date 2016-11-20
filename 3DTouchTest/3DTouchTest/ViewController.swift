//
//  ViewController.swift
//  3DTouchTest
//
//  Created by 劉柏賢 on 2016/4/11.
//  Copyright © 2016年 劉柏賢. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerPreviewingDelegate {

    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerForPreviewingWithDelegate(self, sourceView: self.view)
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        print(#function)
        
        let viewController = self.storyboard?.instantiateViewControllerWithIdentifier("PhotoPreviewViewController") as! PhotoPreviewViewController
        viewController.previousViewController = self
        
        previewingContext.sourceRect = greenView.frame
        
        return viewController
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        
        print(#function)
        
        self.showViewController(viewControllerToCommit, sender: self)
    }
    
    
}

