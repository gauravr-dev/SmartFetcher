//
//  EventWorker.swift
//  SmartFetcher
//
//  Created by Raymond Law on 9/1/17.
//  Copyright (c) 2017 Clean Swift LLC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import CoreData

// MARK: - Model

class Event: NSObject
{
  var timestamp: Date
  
  // MARK: Object lifecycle
  
  init(timestamp: Date)
  {
    self.timestamp = timestamp
  }
}

// MARK: - Methods

protocol EventWorkerAPI
{
  // MARK: CRUD operations
  
  func list() -> [Event]
  func show(at indexPath: IndexPath) -> Event
  func new(timestamp: Date) -> Event
  func create(event: Event)
  func edit(at indexPath: IndexPath) -> Event
  func update(event: Event)
  func delete(at indexPath: IndexPath)
  
  // MARK: Count
  
  func count() -> Int
}
