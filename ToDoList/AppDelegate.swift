//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Artem Polozhentsev on 20.03.2023.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
      //  print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        
        return true
    }


    func applicationWillTerminate(_ application: UIApplication) {

            self.saveContext()
        }
        
        // MARK: - Core Data stack
        
        lazy var persistentContainer: NSPersistentContainer = {

            let container = NSPersistentContainer(name: "DataModel")
            container.loadPersistentStores(completionHandler: { (storeDescription, error) in
                if let error = error as NSError? {

                    fatalError("Unresolved error \(error), \(error.userInfo)")
                }
            })
            return container
        }()
        
        // MARK: - Core Data Saving support
        
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}

