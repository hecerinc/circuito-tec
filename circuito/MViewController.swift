//
//  MViewController.swift
//  circuito
//
//  Created by MacBook on 11/22/16.
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import UIKit
import SideMenu

class MViewController: UIViewController {
    
    fileprivate var selectedIndex = 0
    fileprivate var transitionPoint: CGPoint!
    fileprivate var contentType: ContentType = .Mapa
    fileprivate var navigator: UINavigationController!
    
    lazy fileprivate var menuAnimator : MenuTransitionAnimator! = MenuTransitionAnimator(mode: .presentation, shouldPassEventsOutsideMenu: false) { [unowned self] in
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch (segue.identifier, segue.destination) {
        case (.some("presentMenu"), let menu as MenuTableViewController):
            menu.selectedItem = selectedIndex
            menu.delegate = self
            menu.transitioningDelegate = self
            menu.modalPresentationStyle = .custom
        case (.some("embedNavigator"), let navigator as UINavigationController):
            self.navigator = navigator
            self.navigator.delegate = self
        default:
            super.prepare(for: segue, sender: sender)
        }
    }
}

extension MViewController: MenuViewControllerDelegate {
    
    func menu(_: MenuTableViewController, didSelectItemAt index: Int, at point: CGPoint) {
        contentType = !contentType
        transitionPoint = point
        selectedIndex = index
        
        let content = storyboard!.instantiateViewController(withIdentifier: "Content") as! ViewController
        content.type = contentType
        navigator.setViewControllers([content], animated: true)
        
        DispatchQueue.main.async {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func menuDidCancel(_: MenuTableViewController) {
        dismiss(animated: true, completion: nil)
    }
}

extension MViewController: UINavigationControllerDelegate {
    
    func navigationController(_: UINavigationController, animationControllerFor _: UINavigationControllerOperation,
                              from _: UIViewController, to _: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        if let transitionPoint = transitionPoint {
            return CircularRevealTransitionAnimator(center: transitionPoint)
        }
        return nil
    }
}

extension MViewController: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting _: UIViewController,
                             source _: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return menuAnimator
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return MenuTransitionAnimator(mode: .dismissal)
    }
}
