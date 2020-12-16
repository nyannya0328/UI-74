//
//  user.swift
//  UI-74
//
//  Created by にゃんにゃん丸 on 2020/12/16.
//

import SwiftUI

struct user: Identifiable {
    var id = UUID().uuidString
    var name : String
    var url : String
}

var users = [

   user(name: "Dog", url: "https://images.unsplash.com/photo-1607923432780-7a9c30adcb72?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2549&q=80"),
    
    user(name: "Girl", url: "https://images.unsplash.com/photo-1607877342168-c745c224b00b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"),
    
    user(name: "Cat", url: "https://images.unsplash.com/photo-1607907085978-64ecc7ca503b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"),
    
    user(name: "Boy", url: "https://images.unsplash.com/photo-1607814261600-6bc1d3079cec?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"),
    
    user(name: "pice", url: "https://images.unsplash.com/photo-1607824972469-9a3555e6e8fc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"),
    
    user(name: "Moai", url: "https://images.unsplash.com/photo-1607419458122-60b1297a3c3a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"),
    
    user(name: "Baby", url: "https://images.unsplash.com/photo-1607947909130-bf48ac6884b9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=3450&q=80"),
    
    user(name: "House", url: "https://images.unsplash.com/photo-1607910993179-825671a8428f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"),
    
    user(name: "Birld", url: "https://images.unsplash.com/photo-1607877316498-03a00741c957?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"),
    
    user(name: "Lion", url: "https://images.unsplash.com/photo-1517036391698-b004444390fe?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80")
    

]

struct Post : Identifiable {
    var id = UUID().uuidString
    var user : user
    var imageurl : String
    var title : String
    var likes : String
    var shares : String
    var comments : String
    var postTime : String
}
    
    let posts = [
         Post(user: users[0], imageurl: "https://images.unsplash.com/photo-1602525963389-fde1e08ca487?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80", title: "a", likes: "1", shares: "1", comments: "✋", postTime: "100"),
        
        Post(user: users[1], imageurl: "https://images.unsplash.com/photo-1607111440703-ecfce124e7f0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1576&q=80", title: "Baby", likes: "2", shares: "4", comments: "😄", postTime: "100"),
        
        Post(user: users[2], imageurl: "https://images.unsplash.com/photo-1591117207239-788bf8de6c3b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=3453&q=80", title: "Punch", likes: "3", shares: "6", comments: "✊", postTime: "100"),
        
        Post(user: users[3], imageurl: "https://images.unsplash.com/photo-1584464457692-54516d705fe0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80", title: "Camon", likes: "4", shares: "8", comments: "😆", postTime: "100"),
        
        Post(user: users[4], imageurl: "https://images.unsplash.com/photo-1590696628300-9d7aad4e4193?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1900&q=80", title: "Cry", likes: "5", shares: "10", comments: "😓", postTime: "100"),
        
        Post(user: users[5], imageurl: "https://images.unsplash.com/photo-1602165785905-a7120c856fa4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1575&q=80", title:"B", likes: "6", shares: "1,", comments: "✋", postTime: "100"),
        
        Post(user: users[6], imageurl: "https://images.unsplash.com/photo-1431440869543-efaf3388c585?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=3450&q=80", title: "Storm", likes: "7", shares: "14", comments: "💦", postTime: "100"),
        
        Post(user: users[7], imageurl: "https://images.unsplash.com/photo-1575939238474-c8ada13b2724?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=3451&q=80", title: "Smile", likes: "8", shares: "16", comments: "😏", postTime: "100"),
        
        Post(user: users[8], imageurl: "https://images.unsplash.com/photo-1562860149-691401a306f8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80", title: "Mask", likes: "9", shares: "18", comments: "😷", postTime: "100"),
    
    ]
    
