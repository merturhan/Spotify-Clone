//
//  TitleView.swift
//  Spotify-Clone
//
//  Created by Mert Urhan on 19.12.2023.
//

import SwiftUI

struct TitleView: View {
    
    @Binding var selectedTitle: SelectedTitle
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.spotifyBlack2)
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.spotifyGreen)
            }
            
            Button(action: {
                selectedTitle = .all
            }, label: {
                Text(" All ")
                    .font(.system(size: 16))
                    .foregroundStyle(selectedTitle == .all ? Color.black : Color.white)
            })
            .buttonStyle(BorderedButtonStyle(backgroundColor: selectedTitle == .all ? .spotifyGreen : .spotifyGray))
            .frame(height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                selectedTitle = .music
            }, label: {
                Text("Music")
                    .font(.system(size: 16))
                    .foregroundStyle(selectedTitle == .music ? Color.black : Color.white)
            }).buttonStyle(BorderedButtonStyle(backgroundColor: selectedTitle == .music ? .spotifyGreen : .spotifyGray))
                .frame(height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                selectedTitle = .podcasts
            }, label: {
                Text("Podcasts")
                    .foregroundStyle(selectedTitle == .podcasts ? Color.black : Color.white)
                    .font(.system(size: 16))
            }).buttonStyle(BorderedButtonStyle(backgroundColor: selectedTitle == .podcasts ? .spotifyGreen : .spotifyGray))
                .frame(height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                selectedTitle = .wrapped
            }, label: {
                Text("Wrapped")
                    .foregroundStyle(selectedTitle == .wrapped ? Color.black : Color.white)
                    .font(.system(size: 16))
            }).buttonStyle(BorderedButtonStyle(backgroundColor: selectedTitle == .wrapped ? .spotifyGreen : .spotifyGray))
                .frame(height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
        }
    }
}

#Preview {
    TitleView(selectedTitle: .constant(SelectedTitle.all))
}
