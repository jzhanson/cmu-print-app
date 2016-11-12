//
//  TutorialViewController.swift
//  CMUPrint
//
//  Created by Josh Zhanson on 11/2/16.
//  Copyright © 2016 Josh Zhanson. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func shareButton(sender: UIBarButtonItem) {
        displayShareSheet(shareContent: "Hello, world! I <3 ScottyLabs!")
    }

    
    func displayAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
        return
    }
    
    
    func displayShareSheet(shareContent:String) {

//        let textToShare = "Swift is awesome!  Check out this website about it!"
//        
//        if let myWebsite = NSURL(string: "http://www.codingexplorer.com/") {
//            let objectsToShare = [textToShare, myWebsite]
//            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
//            
//            //New Excluded Activities Code
//            activityVC.excludedActivityTypes = [UIActivityTypeAirDrop, UIActivityTypeAddToReadingList]
//            //
//            
//            activityVC.popoverPresentationController?.sourceView = sender
//            self.presentViewController(activityVC, animated: true, completion: nil)
//        }
        
        let activityViewController = UIActivityViewController(activityItems: [shareContent as NSString], applicationActivities: nil)
        present(activityViewController, animated: true, completion: {})
    }

}
