/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let product = PFObject(className: "Products")
//        
//        product["name"] = "Ice Cream"
//        product["description"] = "Tutti Fruiti"
//        product["price"] = 4.99
//        
//        product.saveInBackgroundWithBlock { (success, error) in
//            if success == true {
//                print("Object saved with \(product.objectId)")
//            } else {
//                print("Failed")
//            }
//        }
        
        let query = PFQuery(className: "Products")
        
        query.getObjectInBackgroundWithId("yliBC0CDAI") { (object, error) in
            if error != nil {
                print(error)
            } else {
                print(object)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
