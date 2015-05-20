//
//  GESArticleViewController.swift
//  Gesso
//
//  Created by 廣戸 裕大 on 2015/05/20.
//  Copyright (c) 2015年 Yuta Hiroto. All rights reserved.
//

import UIKit

class GESArticleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate   = self
        self.tableView.dataSource = self
        self.tableView.registerNib(UINib(nibName: "GESArticleTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: GESArticleTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! GESArticleTableViewCell
        cell.cellLabel.text = "text"
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
//        println(indexPath.row)
        let detailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewContorller") as! GESDetailViewController
        detailViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
