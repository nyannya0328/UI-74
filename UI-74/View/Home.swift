//
//  Home.swift
//  UI-74
//
//  Created by にゃんにゃん丸 on 2020/12/16.
//

import SwiftUI
import SDWebImageSwiftUI

struct Home: View {
    
    var widow = NSScreen.main!.visibleFrame
    
    @State var selected = "house.fill"
    @Namespace var animation

    var body: some View {
        VStack{
            
            ZStack(alignment:Alignment(horizontal: .center, vertical: .bottom)) {
                HStack{
                    
                    Text("Amazon")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("amazon"))
                    
                  
                    
                    
                    
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        HStack{
                            
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .clipShape(Circle())
                            
                            Text("Apple")
                                .foregroundColor(.black)
                            
                        }
                        
                        
                        
                        
                    })
                    .buttonStyle(PlainButtonStyle())
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image(systemName: "magnifyingglass.circle.fill")
                                    .foregroundColor(.black)
                                    .padding(10)
                                    .background(Color.gray.opacity(0.2))
                                    .clipShape(Circle())
                            })
                            
                            .buttonStyle(PlainButtonStyle())
                            .padding(.leading,8)
                                
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image("m")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 15, height: 15)
                                        .padding(10)
                                        .background(Color.gray.opacity(0.2))
                                        .clipShape(Circle())
                                    
                               
                            })
                            .buttonStyle(PlainButtonStyle())
                            
                            
                            
                            
                            
                        
                       
                        
                       
                        
                        
                        
                  
                }
                .padding(.vertical)
                .padding(.leading,10)
                .padding(.trailing)
                .padding(.top,12)
                
                .background(Color.white)
                .shadow(color:Color.black.opacity(0.02), radius: 5, x: 0, y: 5)
                
                HStack{
                    
                    
                    TabButton(image: "house.fill", selected: $selected, animation: animation)
                    
                    TabButton(image: "bell.fill", selected: $selected, animation: animation)
                    
                    TabButton(image: "play.fill", selected: $selected, animation: animation)
                    
                    TabButton(image: "person.circle.fill", selected: $selected, animation: animation)
                    
                    TabButton(image: "line.horizontal.3", selected: $selected, animation: animation)
                    
                    TabButton(image: "speaker.fill", selected: $selected, animation: animation)
                    
                }
               
                
                
            }
            HStack{
                
             
                SlideTabView()
                
               PostView()
                
                ContactView()
                
                
            }
            .frame(maxHeight: .infinity)
            
           
            
            
            
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: widow.width / 1.4, height: widow.height - 60)
        .background(Color("bg"))
        .preferredColorScheme(.light)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct PostView : View {
    
    @State var txt = ""
    var body: some View{
        
        ScrollView{
            
            VStack{
                
                VStack{
                    
                    HStack{
                        
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                        
                        TextField("Search", text: $txt)
                            .textFieldStyle(PlainTextFieldStyle())
                        
                    }
                    Divider()
                    
                    HStack{
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Label(
                                title: { Text("Live")
                                    .foregroundColor(.black)
                                },
                                icon: { Image(systemName: "video.fill.badge.plus")
                                    .foregroundColor(.red)
                                    
                                    
                                })
                                .frame(maxWidth: .infinity)
                            
                          
                            
                            
                            
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        Divider()
                            .padding(.vertical,5)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Label(
                                title: { Text("Photo")
                                    .foregroundColor(.black)
                                },
                                icon: { Image(systemName: "photo.on.rectangle")
                                    .foregroundColor(.red)
                                    
                                    
                                })
                                .frame(maxWidth: .infinity)
                            
                          
                            
                            
                            
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        Divider()
                            .padding(.vertical,5)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Label(
                                title: { Text("Room")
                                    .foregroundColor(.black)
                                },
                                icon: { Image(systemName: "video.badge.plus")
                                    .foregroundColor(.red)
                                    
                                    
                                })
                                .frame(maxWidth: .infinity)
                            
                          
                            
                            
                            
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                       
                        
                        
                        
                        
                        
                       
                        
                    }
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        HStack{
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Label(
                                    title: { Text("Create Room")
                                        .foregroundColor(.gray)
                                    },
                                    icon: { Image(systemName: "video.badge.plus")
                                        .foregroundColor(.orange)
                                    })
                            })
                            .padding(10)
                            .buttonStyle(PlainButtonStyle())
                            .background(Capsule().strokeBorder(Color.purple))
                            
                            
                            ForEach(users){user in
                                
                                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                                    WebImage(url: URL(string: user.url)!)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 35, height: 35)
                                        .clipShape(Circle())
                                    
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 10, height: 10)
                                    
                                    
                                })
                            }
                            
                        }
                        .padding(10)
                        
                        
                        
                    })
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    ForEach(posts){post in
                        
                       
                        PostCardView(post: post)
                        
                        
                        
                    }
                        
                        
                        
                        
                    
                        
                    
                }
                
                
                
            }
            .padding()
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct PostCardView : View {
    
    var post : Post
    var body: some View{
        VStack{
            
            HStack{
                
                WebImage(url: URL(string: post.user.url))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                
                VStack(alignment:.leading,spacing:5){
                    Text(post.user.name)
                        .foregroundColor(.black)
                    
                    HStack{
                        
                        Text(post.postTime)
                            .foregroundColor(.gray)
                            .frame(width: 3, height: 3)
                        
                        Image(systemName: "globe")
                            .foregroundColor(.gray)
                        
                        
                    }
                   
                    
                    
                    
                }
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("m-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .foregroundColor(.black)
                        .rotationEffect(.init(degrees: Double(90)))
                })
                .buttonStyle(PlainButtonStyle())
                
            }
            .padding(.horizontal,10)
                Text(post.title)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(10)
                    .padding(.horizontal,10)
                    
                    
            WebImage(url: URL(string: post.imageurl)!)
                .resizable()
                .aspectRatio(contentMode: .fill)
                
            HStack{
                
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(Color.red)
                Text("\(post.likes)")
                
                Spacer()
                
                Text("\(post.comments) Comments")
                    .foregroundColor(.gray)
                
                Text("\(post.shares) Shares")
                    .foregroundColor(.gray)
                
            }
            .padding(.horizontal,10)
            .padding(.top,5)
            Divider()
            
                
                
                HStack{
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label(
                            title: { Text("Like")
                                .foregroundColor(.black)
                            },
                            icon: { Image(systemName: "hand.thumbsup.fill")
                                .foregroundColor(.gray)
                                
                                
                            })
                            .frame(maxWidth: .infinity)
                        
                    
                       
                      
                        
                        
                        
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                   Divider()
                        .padding(.vertical,-5)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label(
                            title: { Text("Commetns")
                                .foregroundColor(.black)
                            },
                            icon: { Image(systemName: "folder.fill")
                                .foregroundColor(.red)
                                
                                
                            })
                            .frame(maxWidth: .infinity)
                        
                      
                        
                        
                        
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Divider()
                        .padding(.vertical,-5)
                   
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label(
                            title: { Text("Share")
                                .foregroundColor(.black)
                            },
                            icon: { Image(systemName: "arrowshape.turn.up.right.fill")
                                .foregroundColor(.red)
                                
                                
                            })
                            .frame(maxWidth: .infinity)
                        
                      
                        
                        
                        
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                   
                    
                    
                    
                    
                    
                   
                    
                }
                
                
                
            
                
                
                
            
            .padding(.horizontal,10)
                .padding(.top,10)
            
            
            
        }
        .padding(.vertical,10)
        .background(Color.white)
        .cornerRadius(10)
        
    }
}

struct SlideTabbuttom : View {
    
    var image : String
    var title : String
    var color : String
    var isSystem : Bool
    var body: some View{
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            
            HStack{
                
                
                if isSystem{
                    
                    Image(systemName: image)
                        .resizable()
                        .font(.system(size: 25))
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color(color))
                    
                        
                    
                    
                    
                }
                else{
                    
                    Image(image)
                        .resizable()
                        .renderingMode(color == "" ? .original : .template)
                        .foregroundColor(Color(color))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                    
                    
                    
                }
                Text(title)
                    .foregroundColor(.black)
        
            
            }
            .padding(.horizontal)
            
            
        })
        .buttonStyle(PlainButtonStyle())
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct SlideTabView: View {
    
    var widow = NSScreen.main!.visibleFrame
    var body: some View {
        VStack(spacing:20){
            
            SlideTabbuttom(image: "logo", title: "Apple", color: "", isSystem: false)
                .padding(.top,20)
            
            SlideTabbuttom(image: "suit.heart", title: "Love", color: "c1", isSystem: true)
            
            SlideTabbuttom(image: "applewatch", title: "Watch", color: "c2", isSystem: true)
            
            SlideTabbuttom(image: "paperplane.fill", title: "Air", color: "c3", isSystem: true)
            
            SlideTabbuttom(image: "music.mic", title: "Mike", color: "c2", isSystem: true)
            
            SlideTabbuttom(image: "cart.fill", title: "Add to Cart", color: "c4", isSystem: true)
            
            SlideTabbuttom(image: "tv.music.note.fill", title: "Apple", color: "c3", isSystem: true)
            
            SlideTabbuttom(image: "book.fill", title: "Book", color: "c5", isSystem: true)
            
            Spacer()
            
            
            
        }
        .frame(maxWidth: (widow.width / 1.8) / 4, maxHeight: .infinity)
    }
}

struct ContactView: View {
    var widow = NSScreen.main!.visibleFrame
    var body: some View {
        VStack{
            
            HStack{
                
                Text("Contack")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.blue)
                })
                .buttonStyle(PlainButtonStyle())
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "slider.vertical.3")
                        .foregroundColor(.red)
                })
                .buttonStyle(PlainButtonStyle())
                
                
            }
            .padding()
            
            ScrollView{
                
                ForEach(users){user in
                    
                    HStack{
                        
                        
                        WebImage(url: URL(string: user.url)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                        
                        
                        Text(user.name)
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    
                }
                
                
                
            }
            
            
            
        }
        .frame(maxWidth: (widow.width / 1.8) / 4, maxHeight: .infinity)
    }
}

struct TabButton : View {
    var image : String
    @Binding var selected : String
    
    var animation : Namespace.ID
    
    
    var body: some View{
        
        Button(action: {
            
            withAnimation{selected = image}
            
        }, label: {
            VStack(spacing : 0){
                
                Image(systemName: image)
                    .font(.title)
                    .foregroundColor(selected == image ? Color("bg") : Color.gray.opacity(0.7))
                    .frame(height: 40)
                  
                
                ZStack{
                    
                    
                    Capsule()
                        .fill(Color.clear)
                        .frame(width: 65, height: 5)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                    
                    if selected == image{
                        
                        Capsule()
                            .fill(Color.red)
                            .frame(width: 65, height: 5)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                        
                        
                        
                    }
                    
                }
                
            }
        })
        .buttonStyle(PlainButtonStyle())
    }
}
