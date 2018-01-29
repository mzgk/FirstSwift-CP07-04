//
//  DetailViewController.swift
//  Animals
//
//  Created by 水垣岳志 on 2018/01/29.
//  Copyright © 2018年 mzgkworks.com. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    // 受け取る動物情報をプロパティとして定義
    var info: AnimalInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        // 受け取った動物情報を表示する
        navigationItem.title = info.name
        label.text = info.description
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

}
