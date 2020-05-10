//
//  SceneDelegate.swift
//  TabBarControllerPractice
//
//  Created by 윤병일 on 2020/05/09.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
       
        let vc = ViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()
        
        let naviVC = UINavigationController(rootViewController: thirdVC)
        
        let tabVC = UITabBarController()
        tabVC.viewControllers = [vc, secondVC, naviVC]
        
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        secondVC.tabBarItem = UITabBarItem(title: "Second", image: UIImage(systemName: "person.circle"), tag: 1)
        
        naviVC.tabBarItem = UITabBarItem(title: "Third", image: UIImage(systemName: "trash"), tag: 2)
        
        window?.rootViewController = tabVC
        window?.backgroundColor = .systemBackground
        window?.makeKeyAndVisible()
        
        
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
      
    }

    func sceneWillResignActive(_ scene: UIScene) {
       
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
      
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

