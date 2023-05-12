import SwiftUI

struct QuizQuestion {
    var question: String
    var options: [String]
    var correctAnswerIndex: Int
}

struct QuizView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var changeView: Bool = false
    @State private var restartQuiz = false


    
    let colors = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    let gradient = Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple])


    let questions = [QuizQuestion(question: "¿Qué significa VIH?", options: ["Virus de Inmunodeficiencia Humana", "Virus de la Influenza Hemorrágica", "Virus de la Infección Hepática"], correctAnswerIndex: 0),
        QuizQuestion(question: "¿Cuál de los siguientes NO es un método de transmisión del VIH?", options: ["Sexo vaginal sin protección", "Uso compartido de agujas y jeringas", "Contacto casual, como besos o abrazos"], correctAnswerIndex: 2),
        QuizQuestion(question: "¿Cuál de las siguientes afirmaciones sobre el condón es FALSA?", options: ["El condón puede prevenir la transmisión del VIH", "El condón debe ser usado en todas las relaciones sexuales para prevenir la transmisión del VIH", "El condón no tiene fecha de expiración y se puede usar en cualquier momento"], correctAnswerIndex: 2), QuizQuestion(question: "¿Cuál es el tratamiento recomendado para el VIH", options: ["Vacuna para el VIH", "PrEP", "Antirretrovirales"], correctAnswerIndex: 2), QuizQuestion(question: "¿Cuál de las siguientes afirmaciones sobre el VIH es CORRECTA?", options: ["El VIH se puede transmitir a través de la leche materna", "El VIH se transmite si se tiene un contacto con el portador", "El VIH es exclusivo de las personas LGBT+"], correctAnswerIndex: 0)
    ]

    @State private var currentQuestionIndex = 0
    @State private var score = 0
    @State private var quizCompleted = false

    var body: some View {
        
        if changeView {
            
            MenuView()
            
        } else {
            
            NavigationView {
                GeometryReader { geo in
                    
                    ZStack(alignment: .top) {
                        
                        Colors.background
                        
                        ZStack(alignment: .top) {
                            
                            Image("Home")
                                .offset(y: -100)
                            
                            VStack(alignment: .center) {
                                Spacer()
                                if quizCompleted {
                                    VStack(alignment: .center) {
                                    switch score {
                                    case 100: Text("¡Excelente! ⭐️⭐️⭐️⭐️" )
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    case 80..<100:
                                        Text("¡Muy bien! Sigue practicando. ⭐️⭐️⭐️" )
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    case 60..<80:
                                        Text("Bien, sin embargo, es mejor que repitas el módulo. ⭐️⭐️" )
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    case 0..<60:Text("Te recomiendo que sigas estudiando el módulo, pero eres valiente por dar el primer paso ⭐️" )
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    default:Text("" )
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    }
                                    
                                    Text("Puntaje obtenido: \(score) de 100" )
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .padding()
                                    
                                    Button(action: {
                                        self.currentQuestionIndex = 0
                                        self.score = 0
                                        self.quizCompleted = false
                                    }, label: {
                                        Image(systemName: "repeat")
                                            .font(.body)
                                            .foregroundColor(Color.blue)
                                            .padding()
                                            .background(Color.white)
                                            .cornerRadius(10)
                                        
                                    })
                                    .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 2)
                                    .bold()
                                    
                                    
                                    Spacer().frame(height: 50)
                                    
                                    
                                    NavigationLink(destination: HomeView()) {
                                        Text("Finalizar módulo")
                                            .font(.headline)
                                            .padding()
                                            .background(LinearGradient(gradient: Gradient(colors: [.red , .green, .blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .fontWeight(.bold)
                                            .padding(5)
                                    }
                                    .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 2)
                                    
                                }
                                    Spacer()
                                        .frame(height: geo.size.height/5)
                                } else {
                                    
                                    Text("Ponte a prueba")
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(width: geo.size.width - 100, height: geo.size.height/10)
                                        .multilineTextAlignment(.center)
                                        .overlay {
                                            
                                            Button(action: {
                                                self.changeView = !self.changeView
                                            }, label: {
                                                
                                                HStack {
                                                    
                                                    Image(systemName: "arrow.left")
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 24))
                                                        .padding()
                                                    
                                                } // HStack
                                                
                                            }) // -> Button
                                            .offset(x: -geo.size.width/2.5)
                                            
                                        } // -> Text.overlay
                                    
                                    Spacer()
                                        .frame(height: geo.size.height/10)
                                    
                                    ScrollView {
                                        
                                        Text(questions[currentQuestionIndex].question)
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.center)
                                            .padding(.vertical, 35)
                                            .padding(.horizontal, 35)
                                        
                                        
                                        
                                        ForEach(0 ..< questions[currentQuestionIndex].options.count, id: \.self) { index in
                                            Button(action: {
                                                self.submitAnswer(selectedAnswerIndex: index)
                                            }, label: {
                                                HStack {
                                                    Text(self.questions[self.currentQuestionIndex].options[index])
                                                        .font(.title3)
                                                        .fontWeight(.bold)
                                                        .foregroundColor(.white)
                                                        .frame(maxWidth: .infinity)
                                                }
                                                
                                                .padding()
                                                .background(LinearGradient(gradient: Gradient(colors: [.red, .orange, .green, .blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .cornerRadius(10)
                                                .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 2)

                                                .padding(.vertical, 12)
                                            })
                                        }
                                        .padding(.horizontal, 50)
                                        
                                        
                                        
                                        Text("Pregunta \(currentQuestionIndex + 1) de \(questions.count)")
                                            .font(.headline)
                                            .padding(.top, 20)
                                            .fontWeight(.bold)
                                    }
                                    Spacer()
                                }
                            }
                        }
                        }
                    
                }
        } // NavigationView
        .navigationBarHidden(true)
        
    } // -> if-else
        
    }
        

    func submitAnswer(selectedAnswerIndex: Int) {
        if selectedAnswerIndex == questions[currentQuestionIndex].correctAnswerIndex {
            score += 20
        }

        currentQuestionIndex += 1

        if currentQuestionIndex >= questions.count {
            quizCompleted = true
        }
    }
}


struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
