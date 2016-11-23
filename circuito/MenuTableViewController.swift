//
//  MenuTableViewController.swift
//  circuito
//
//  Created by MacBook on 11/21/16.
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import UIKit
import SideMenu


protocol MenuViewControllerDelegate: class {
    
    func menu(_ menu: MenuTableViewController, didSelectItemAt index: Int, at point: CGPoint)
    func menuDidCancel(_ menu: MenuTableViewController)
}

class MenuTableViewController: UITableViewController {
    
    weak var delegate: MenuViewControllerDelegate?
    var selectedItem = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let indexPath = IndexPath(row: selectedItem, section: 0)
        tableView.selectRow(at: indexPath, animated: false, scrollPosition: .none)
    }
}

extension MenuTableViewController {
    
    @IBAction fileprivate func dismissMenu() {
        delegate?.menuDidCancel(self)
    }
}

//MARK: Menu protocol
extension MenuTableViewController: Menu {
    
    var menuItems: [UIView] {
        return [tableView.tableHeaderView!] + tableView.visibleCells
    }
}

extension MenuTableViewController {
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath == tableView.indexPathForSelectedRow ? nil : indexPath
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rect = tableView.rectForRow(at: indexPath)
        var point = CGPoint(x: rect.midX, y: rect.midY)
        point = tableView.convert(point, to: nil)
        delegate?.menu(self, didSelectItemAt: indexPath.row, at: point)
    }
}
