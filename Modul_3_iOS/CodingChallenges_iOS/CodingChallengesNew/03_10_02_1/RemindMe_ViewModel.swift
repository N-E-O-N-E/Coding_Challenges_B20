//
//  RemindMe_ViewModel.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 05.11.24.
//

import Foundation
import NotificationCenter

@MainActor
class RemindMe_ViewModel: ObservableObject {
       
    private let center = UNUserNotificationCenter.current()
    
    func requestPermission(){
        center.requestAuthorization(options: [.alert, .sound, .badge]) { success, error in
            if let error {
                print(error)
            }
            
            guard success else {
                print("Permission denied")
                return
            }
            
            print("Permission success")
        }
    }
    
    func scheduleNotification() {
        
        let content = UNMutableNotificationContent()
        content.title = "Reminder"
        content.body = "This is a reminder"
        content.sound = .default
        
        var time = DateComponents()
        time.second = 5
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(time.second!), repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        center.add(request) { error in
            if let error = error {
                print(error)
            }
        }
        
    }
        

    }

