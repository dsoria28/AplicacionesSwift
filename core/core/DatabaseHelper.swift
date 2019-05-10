//
//  DatabaseHelper.swift
//  core
//
//  Created by Yogesh Patel on 26/04/18.
//  Copyright © 2018 Yogesh Patel. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper{
    
    static let shareInstance = DatabaseHelper()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func save(object:[String:String]){
        
        let book = NSEntityDescription.insertNewObject(forEntityName: "Books", into: context) as! Books
        
        book.titulo = object["titulo"]
        book.autor = object["autor"]
        book.editorial = object["editorial"]
        book.paginas = object["paginas"]
        
        do{
            try context.save()
            print("done")
        }catch{
            print("Data not save \(error)")
        }
        
    }
    
    func getBooksData() -> [Books]{
        
        var book = [Books]()
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Books")
        
        do{
            book = try context.fetch(fetchRequest) as! [Books]
        }catch{
            print("Not get data \(error)")
        }
        return book
    }
    
    func deleteBook(index:Int) ->[Books]{
        var book = getBooksData()
        context.delete(book[index])
        book.remove(at: index)
        
        do{
            try context.save()
        }catch {
            print("Error deleting data \(error)")
        }
        return book 
    }
    
    func editBook(object:[String:String], i: Int){
        var book = getBooksData()
        book[i].titulo = object["titulo"]
        book[i].autor = object["autor"]
        book[i].editorial = object["editorial"]
        book[i].paginas = object["paginas"]
        
        do{
            try context.save()
        }catch{
            print("Error updating data \(error)")
        }
    }
}
