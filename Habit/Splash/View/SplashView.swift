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
            loadingView(error: "Erro no servidor")
        case .goToSignInScreen:
            Text("Carregar tela de login")
        case .goToHomeScreen: 
            Text("Carregar tela principal")
        case .error(let msg) : 
            loadingView(error: msg)
        }
    }
}


// Funcoes em extensão
//Funcoes são mais usadas pois aceitam variaveis.
extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
                   Image("logo")
                       .resizable()
                       .scaledToFit()
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
                       .padding(20)
                       .background(Color.white)
                       .ignoresSafeArea()
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("OK")) {
                          // Faz algo quando some o alerta
                        })
                    }
            }
        }
    }
}

#Preview {
    SplashView(state: .error("Teste de erro no servidor"))
//    SplashView(state: .loading)
}
