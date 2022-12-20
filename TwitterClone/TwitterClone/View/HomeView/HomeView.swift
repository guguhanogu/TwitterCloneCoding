//
//  HomeView.swift
//  TwitterClone
//
//  Created by 최한호 on 2022/12/15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach (0..<20) { _ in
                    TwitView()
                    ReTwitView()
                    
                }
            }
        }
        .padding(.top, 45)
    }
}

struct TwitView: View {
    var body: some View {
        VStack {
            
            HStack {
                VStack {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color(hue: 0.444, saturation: 0.923, brightness: 0.449))
                    
                    Spacer()
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("유용한 정보 저장계")
                            .font(.subheadline)
                            .bold()
                        HStack {
                            Text("@wildcatclub_")
                                .padding(.trailing, -5)
                            Text("･")
                                .padding(.trailing, -5)
                            Text("1일")
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.gray)
                            }

                        }
                        .foregroundColor(.gray)
                        .font(.footnote)
                        
                        Spacer()
                    }
                    
                    Text("지방 출장시 실패 확률이 거의 없는 식당")
                        .font(.subheadline)
                        .fontWeight(.light)
                    
//                    Rectangle()
//                        .
//
//
                    Image("image01")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .frame(height: 250)
                        .border(Color(hue: 1.0, saturation: 0.0, brightness: 0.925))
                        .cornerRadius(15)
                    
                    HStack {
                        Button {
                            // 답글 트윗
                        } label: {
                            HStack {
                                Image(systemName: "message")
                                    .bold()
                                Text("1")
                            }
                        }
                        .padding(.trailing, 30)
                        
                        Button {
                            // 리트윗
                        } label: {
                            HStack {
                                Image(systemName: "arrow.2.squarepath")
                                    .bold()
                                Text("1647")
                            }
                        }
                        .padding(.trailing, 20)
                        
                        Button {
                            // 마음에 들어요
                        } label: {
                            HStack {
                                Image(systemName: "heart")
                                    .bold()
                                Text("2364")
                            }
                        }
                        .padding(.trailing, 20)
                        
                        Button {
                            // 트윗 공유
                        } label: {
                            HStack {
                                Image(systemName: "square.and.arrow.up")
                                    .bold()
                            }
                        }

                    }
                    .foregroundColor(.gray)
                    .font(.footnote)
                    
                }
            }
            
            Divider()
                .padding(.vertical, 4)
                .padding(.horizontal, -20)
        }
        .padding(.horizontal)
        
    }
}

struct ReTwitView: View {
    var body: some View {
        VStack {
            
            HStack {
                VStack {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.692, brightness: 0.691))
                    
                    Spacer()
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("웃짤계")
                            .font(.subheadline)
                            .bold()
                        HStack {
                            Text("@utzzal1")
                                .padding(.trailing, -5)
                            Text("･")
                                .padding(.trailing, -5)
                            Text("2022. 12. 12.")
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.gray)
                            }

                        }
                        .foregroundColor(.gray)
                        .font(.footnote)
                        
                        Spacer()
                    }
                    
                    Text("멍청해서 좋은 점")
                        .font(.subheadline)
                        .fontWeight(.light)
                    
//                    Rectangle()
//                        .
//
//
                    Image("image02")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .frame(height: 400)
                        .border(Color(hue: 1.0, saturation: 0.0, brightness: 0.925))
                        .cornerRadius(15)
                    
                    HStack {
                        Button {
                            // 답글 트윗
                        } label: {
                            HStack {
                                Image(systemName: "message")
                                    .bold()
                                Text("1")
                            }
                        }
                        .padding(.trailing, 30)
                        
                        Button {
                            // 리트윗
                        } label: {
                            HStack {
                                Image(systemName: "arrow.2.squarepath")
                                    .bold()
                                Text("1.2만")
                            }
                        }
                        .padding(.trailing, 20)
                        
                        Button {
                            // 마음에 들어요
                        } label: {
                            HStack {
                                Image(systemName: "heart")
                                    .bold()
                                Text("9179")
                            }
                        }
                        .padding(.trailing, 20)
                        
                        Button {
                            // 트윗 공유
                        } label: {
                            HStack {
                                Image(systemName: "square.and.arrow.up")
                                    .bold()
                            }
                        }

                    }
                    .foregroundColor(.gray)
                    .font(.footnote)
                    
                }
            }
            
            Divider()
                .padding(.vertical, 4)
                .padding(.horizontal, -20)
        }
        .padding(.horizontal)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
