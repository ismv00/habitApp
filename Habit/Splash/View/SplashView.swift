//
//  SplashView.swift
//  Habit
//
//  Created by Igor S. Menezes on 03/07/24.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .goToSignInScreen
    
    var body: some View {
        switch state {
        case .loading: 
            loadingView()
        case .goToSignInScreen:
            Text("Carregar tela de login")
        case .goToHomeScreen: 
            Text("Carregar tela principal")
        case .error(let msg) : 
            Text("mostrar erro: \n \(msg)")
        }
    }
}


////Compartilhamento de objetos
//struct LoadingView: View {
//    var body: some View {
//        ZStack {
//            Image("logo")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .padding(20)
//                .background(Color.white)
//                .ignoresSafeArea()
//        }
//    }
//}


//// Extensão de variaveis
//extension SplashView {
//    var loading: some View {
//        ZStack {
//            Image("logo")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .padding(20)
//                .background(Color.white)
//                .ignoresSafeArea()
//        }
//    }
//}

// Funcoes em extensão
//Funcoes são mais usadas pois aceitam variaveis. 
extension SplashView {
    func loadingView() -> some View {
        ZStack {
                   Image("logo")
                       .resizable()
                       .scaledToFit()
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
                       .padding(20)
                       .background(Color.white)
                       .ignoresSafeArea()
               }
           }
}
#Preview {
    SplashView(state: .loading)
}
