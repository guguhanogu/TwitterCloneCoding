//
//  ContentView.swift
//  TwitterClone
//
//  Created by 최한호 on 2022/12/15.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    @State var menuOpened = false
    
    var body: some View {
        
        ZStack {
            
            
            TabView(selection: $selection) {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                            
                    }
                    .tag(0)

                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                    .tag(1)

                NotificationView()
                    .tabItem {
                        Image(systemName: "bell")
                    }
                    .tag(2)

                MessageView()
                    .tabItem {
                        Image(systemName: "envelope")
                    }
                    .tag(3)
            }
            
            
            VStack {
                HStack {
                    if !menuOpened {
                        Button {
                            //Open Menu
                            menuOpened.toggle()
                        } label: {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30, alignment: .center)
                                .foregroundColor(.gray)
                            
                        }
                    }
                    
                    Spacer()
                    
                    Image("twitter")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35, alignment: .center)
                        .offset(y: 5)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "sparkles")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: .center)
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding(.top, 55)
            
            SideMenu(width: UIScreen.main.bounds.width/1.23, menuOpened: menuOpened, toggleMenu: toggleMenu)

        }
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
    func toggleMenu() {
        menuOpened.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SideMenu: View {
    
    let width: CGFloat
    let menuOpened: Bool
    let toggleMenu: () -> Void
    
    var body: some View {
        ZStack {
            // Dimmed background view
            GeometryReader { _ in
                
                EmptyView()
            }
            .background(Color.gray.opacity(0.2))
            .opacity(self.menuOpened ? 1 : 0)
            .animation(.easeIn(duration: 0.25))
            .onTapGesture{
                self.toggleMenu()
            }
            
            // MenuContent
            HStack {
                MenuContent()
                    .frame(width: width)
                    .offset(x: menuOpened ? 0 : -width)
                    .animation(.default)
                
                Spacer()
            }
        }
    }
}

struct MenuContent: View {
    let items: [MenuItem] = [
        MenuItem(text: "프로필", imageName: "person"),
        MenuItem(text: "토픽",  imageName: "message"),
        MenuItem(text: "북마크",  imageName: "bookmark"),
        MenuItem(text: "리스트",  imageName: "doc.plaintext"),
        MenuItem(text: "Twitter 서클",  imageName: "person.2.wave.2.fill")
    ]
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1))
            
            VStack(alignment: .leading, spacing: 0) {
                
                HStack {
                    NavigationLink {
                        Text("내 프로필 화면으로 랜딩될 예정입니다.")
                    } label: {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 40)
                    }
                    
                    Spacer()
                    
                    Button {
                        print("toggle")
                    } label: {
                        Image(systemName: "person.crop.circle.badge.plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 20)
                    }
                }
                .padding([.top, .horizontal], 30)
                .padding(.bottom, 20)
                
                
                Text("hanochoi")
                    .padding(.horizontal, 30)
                    .bold()
                
                Text("@hanochoi")
                    .foregroundColor(.gray)
                    .padding(.horizontal, 30)
                    .font(.footnote)
                
                HStack {
                    Text("223")
                        .bold()
                    Text("팔로잉")
                        .foregroundColor(.gray)
                        .padding(.leading, -5)
                    
                    Text("163")
                        .bold()
                    Text("팔로워")
                        .foregroundColor(.gray)
                        .padding(.leading, -5)
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .font(.footnote)
                
                
                ForEach(items) { item in
                    HStack {
                        Image(systemName: item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: .center)
                            .padding(.trailing, 20)
                        
                        Text(item.text)
                            .bold()
                            .font(.system(size: 22))
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    .onTapGesture{
                        
                    }
                    .padding(.horizontal, 30)
                    .padding(.vertical)
                    
                }
                
                Divider()
                    .padding([.horizontal, .bottom], 30)
                    .padding(.top, 15)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("크리에이터 스튜디오")
                            .font(.subheadline)
                            .bold()
                        
                        Button {
                            
                        } label: {
                            
                        }

                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 15)
                    
                    HStack {
                        Text("프로페셔널용 도구")
                            .font(.subheadline)
                            .bold()
                        
                        Button {
                            
                        } label: {
                            
                        }

                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 15)
                    
                    HStack {
                        Text("설정 및 지원")
                            .font(.subheadline)
                            .bold()
                        
                        Button {
                            
                        } label: {
                            
                        }

                    }
                    .padding(.horizontal, 30)
                }
                
                Spacer()
                
                HStack {
                    Button {
                        print("")
                    } label: {
                        Image("sun.min")
                    }
                    
                    Spacer()
                    
                    Button {
                        print("")
                    } label: {
                        Image("qrcode")
                    }
                }
                
                
            }
            .padding(.top, 25)
        }
    }
}


struct MenuItem: Identifiable {
    var id = UUID()
    let text: String
    let imageName: String
    let handler: () -> Void = {
        print("Tapped item")
    }
}


