//
//  ViewController.swift
//  Animals
//
//  Created by 水垣岳志 on 2018/01/29.
//  Copyright © 2018年 mzgkworks.com. All rights reserved.
//

import UIKit

/// 動物の情報項目を定義する構造体
struct AnimalInfo {
    var name: String
    var description: String
}

class ViewController: UIViewController, UITableViewDataSource {

    // MARK: - アウトレット
    @IBOutlet weak var tableView: UITableView!

    // MARK: - プロパティ
    /// 動物データ：AnimalInfo構造体型の配列
    let items: [AnimalInfo] = [
        AnimalInfo(name: "ライオン", description: "百獣の王。一般的に最も強い動物として知られている。"),
        AnimalInfo(name: "サイ", description: "頭部に硬い角を持っている。巨体に似合わず最高時速50kmで走る。"),
        AnimalInfo(name: "シマウマ", description: "白黒の縞模様を持つ動物。視覚や嗅覚、聴覚が優れている。"),
        AnimalInfo(name: "キリン", description: "もっとも背が高い動物。首が長いところが特徴。"),
        AnimalInfo(name: "ゾウ", description: "陸生動物では世界最大の動物。鼻は立っていても地面に届くほどに長い。")
    ]

    // MARK: - ライフサイクル
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - デリゲート : UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 暗黙的アンラップにすることで、以降の処理でcellのまま使用できる
        let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "NameCell")
        let item = items[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
}

