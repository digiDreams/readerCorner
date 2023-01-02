//
//  Persistence.swift
//  readerCorner
//
//  Created by Apprenant 16 on 02/01/2023.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        for _ in 0..<10 {
            let newItem = Book(context: viewContext)
            newItem.timestamp = Date()
            newItem.title = "Vivre vite"
            newItem.author = "Brigitte Giraud"
            newItem.resume = "\"J'ai été aimantée par cette double mission impossible. Acheter la maison et retrouver les armes cachées. C'était inespéré et je n'ai pas flairé l'engrenage qui allait faire basculer notre existence.Parce que la maison est au coeur de ce qui a provoqué l'accident.\"En un récit tendu qui agit comme un véritable compte à rebours, Brigitte Giraud tente de comprendre ce qui a conduit à l'accident de moto qui a coûté la vie à son mari le 22 juin 1999. Vingt ans après, elle fait pour ainsi dire le tour du propriétaire et sonde une dernière fois les questions restées sans réponse. Hasard, destin, coïncidences ? Elle revient sur ces journées qui s'étaient emballées en une suite de dérèglements imprévisibles jusqu'à produire l'inéluctable. À ce point électrisé par la perspective du déménagement, à ce point pressé de commencer les travaux de rénovation, le couple en avait oublié que vivre était dangereux.Brigitte Giraud mène l'enquête et met en scène la vie de Claude, et la leur, miraculeusement ranimées."
            newItem.year = 2022
            newItem.category = 0
            
        }
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()
    
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "readerCorner")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
