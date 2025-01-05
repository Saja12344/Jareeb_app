//
//  book5.swift
//  jarb
//
//  Created by saja khalid on 15/06/1446 AH.
//

import SwiftUI

struct book5: View {
    @State private var selectedTab = 0 // لتحديد علامة التبويب النشطة

    var body: some View {
        VStack {
            ZStack{
                Image("backg")
                    .resizable()
                // .scaledToFill()
                    .frame(width: 450, height:450)
                    .cornerRadius(10)
                    .clipped()
                    .padding(.top, 60.0) // إزاحة الصورة لأسفل
                    .ignoresSafeArea()
                // صورة في الأعلى مع إزاحتها للأسفل
                Image("thman") // استبدل باسم الصورة المناسبة
               
                    .resizable()
                // .scaledToFill()
                    .frame(width: 300, height:370)
                    .clipped()
                    .padding(.top, 90.0) // إزاحة الصورة لأسفل
                    .ignoresSafeArea()
                    .cornerRadius(10)
                  
            }
                // قسم المعلومات
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .frame(height: UIScreen.main.bounds.height * 0.6)
                        .overlay(
                            VStack(alignment: .leading, spacing: 00) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(Color.white)
                                        .shadow(color: .gray.opacity(0.2), radius: 10, x: 0, y: 5)
                                        .frame(width: UIScreen.main.bounds.width - 0, height: 620)
                               
                                    
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text("بودكاست ثمانية")                       .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(.blue)
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                            .padding(.trailing, 14.0)
                                        
                                        HStack {
                                        
                                            
                                            Text(" حاتم النجار ")
                                                .font(.subheadline)
                                                .foregroundColor(.gray)
                                              .padding(.trailing, 5.0)
                                            
                                            Image(systemName: "person.fill")
                                                .foregroundColor(.yellow)
                                                .padding(.trailing, 10.0)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing, 10.0)

                                        Text("ريح بالك واسمع لثمانية ، من اقتراحنا لك")
                                            .font(.body)
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                            .padding(.trailing, 20)
                                        
                                        Divider()
                                        
                                        Text("معلومات عامة")
                                            .font(.headline)
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                            .padding(.trailing, 20)
                                        
                                        Text("""
                                            بودكاست ثمانية هو أحد البودكاستات العربية التي اكتسبت شعبية واسعة خلال السنوات الأخيرة. يتناول هذا البودكاست مجموعة متنوعة من الموضوعات التي تهم الشباب العربي، من الثقافة والفنون إلى التكنولوجيا والأعمال.
                                            """)
                                        
                                        .font(.body)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.trailing)
                                        .padding(.horizontal, 20)
                                        .padding(.bottom, 170.0)

                                    }
                                    .padding([.bottom, .trailing], 15)
                                }
                                .padding(.horizontal, 10)
                            }
                        )
                    
                    Spacer()
                    
                    // شريط التنقل السفلي مرفوع للأعلى
                    
//                        .padding(10)
//                        .background(
//                            RoundedRectangle(cornerRadius: 30)
//                                .fill(Color.white)
//                                .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 2)
//                        )
                        .padding(.horizontal, 30)
                        .padding(.bottom, 120) // رفع شريط التبويب قليلاً
                        .frame(height: 60)
                }
                .animation(.easeInOut, value: selectedTab)
            }}}

struct book5_Previews: PreviewProvider {
    static var previews: some View {
        book5()
    }
}

