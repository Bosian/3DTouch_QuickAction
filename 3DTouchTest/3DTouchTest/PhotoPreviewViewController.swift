//
//  PhotoPreviewViewController.swift
//  3DTouchTest
//
//  Created by 劉柏賢 on 2016/4/11.
//  Copyright © 2016年 劉柏賢. All rights reserved.
//

import UIKit

class PhotoPreviewViewController: UIViewController {

    weak var previousViewController: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func previewActionItems() -> [UIPreviewActionItem] {
        
        let shareAction = UIPreviewAction(title: "Share", style: .Default) { [unowned self] (action, viewController) in
            print("\(action): \(viewController))")
            
            let alert = UIAlertController(title: "訊息", message: "分享", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "確認", style: .Default, handler: nil))
            self.previousViewController?.presentViewController(alert, animated: true, completion: nil)
        }
        
        let likeAction = UIPreviewAction(title: "Like", style: .Default) { (action, viewController) in

            print("\(action.title): \(viewController.dynamicType))")
        }
        
        let cancelAction = UIPreviewAction(title: "取消", style: .Selected) { (action, viewController) in
            
        }
        
        let destructiveAction = UIPreviewAction(title: "Destructive", style: .Destructive) { (action, viewController) in
            
        }
        
        return [shareAction, likeAction, cancelAction, destructiveAction]
    }

}
