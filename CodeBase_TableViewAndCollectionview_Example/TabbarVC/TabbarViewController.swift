//
//  ViewController.swift
//  CodeBase_TableViewAndCollectionview_Example
//
//  Created by 염성필 on 2023/08/25.
//

import UIKit

class TabbarViewController: UITabBarController {
    
    // 두번째 - Tabbar 생성
    // 다른 클래스에서 접근 할 수도 있기 때문에 private를 사용해서 제한하기
    private let listVC = {
        var vc = UIViewController()
        vc = ListCollectionViewController()
        vc.title = "List"
        vc.tabBarItem.image = UIImage(systemName: "car")
        let listVC = UINavigationController(rootViewController: vc)
        return listVC
    }()
    
    private let layoutVC = {
        var vc = UIViewController()
        vc = LayoutPraticeViewController()
        vc.title = "LayoutView"
        vc.tabBarItem.image = UIImage(systemName: "pencil")
        let listVC = UINavigationController(rootViewController: vc)
        return listVC
    }()
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainVC = MainTableViewController()
        
        
        mainVC.tabBarItem.image = UIImage(systemName: "flame")
        mainVC.title = "메인"
        title = "MainVC"
        
        // navigationController의 root view 설정
        let mainVCHome = UINavigationController(rootViewController: mainVC)

        // Tabbar color 설정
        self.tabBar.tintColor = UIColor.white // tab bar icon tint color
        self.tabBar.isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.blue
        // 첫 화면에 띄우기
        setViewControllers([mainVCHome, listVC, layoutVC], animated: false)
        
    }
}

