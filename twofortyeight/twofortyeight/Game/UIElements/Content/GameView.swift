import SwiftUI

struct GameView: View {
    @ObservedObject var viewModel: GameViewModel
    @State var showMenu = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Header(score: viewModel.score, bestScore: viewModel.bestScore) {
                self.showMenu.toggle()
            }
            GoalText()
            Board(board: viewModel.board, addedTile: viewModel.addedTile)
            Moves(moves: viewModel.moves)
        }
        .frame(minWidth: .zero,
               maxWidth: .infinity,
               minHeight: .zero,
               maxHeight: .infinity,
               alignment: .center)
        .background(Color(UIColor.systemGray6))
        .background(Menu())
        .background(GameOver())
        .edgesIgnoringSafeArea(.all)
    }
}

extension GameView {
    private func Menu() -> some View {
        EmptyView().sheet(isPresented: $showMenu) {
            MenuView(newGameAction: {
                self.viewModel.reset()
                self.showMenu.toggle()
            }, resetScoreAction: {
                self.viewModel.eraseBestScore()
                self.showMenu.toggle()
            })
        }
    }
    
    private func GameOver() -> some View {
        EmptyView().sheet(isPresented: $viewModel.isGameOver) {
            GameOverView(score: self.viewModel.score, moves: self.viewModel.moves) {
                self.viewModel.reset()
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(viewModel: GameViewModel(GameEngine(), storage: LocalStorage()))
    }
}
