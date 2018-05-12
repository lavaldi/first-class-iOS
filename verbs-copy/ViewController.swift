//
//  ViewController.swift
//  verbs-copy
//
//  Created by Claudia Valdivieso Castillo on 5/11/18.
//  Copyright © 2018 La Valdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var demoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demoTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Mi mamá me mima \(indexPath.row) \(indexPath.section)"
        return cell
    }
    
    
}

