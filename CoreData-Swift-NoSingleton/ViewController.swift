//
//  ViewController.swift
//  CoreData-Swift-NoSingleton
//
//  Created by Paul Solt on 1/31/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    var container: NSPersistentContainer
    
    init?(coder: NSCoder, container: NSPersistentContainer) {
        self.container = container
        
        super.init(coder: coder)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("Use the init(coder:, container:) instead")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
    }
    
    static func makeViewController(container: NSPersistentContainer) -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        return storyboard.instantiateViewController(identifier: "ViewController") { coder in
            ViewController(coder: coder, container: container)
        }
    }

}

