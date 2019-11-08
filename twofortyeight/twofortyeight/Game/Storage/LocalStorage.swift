import Foundation

class LocalStorage: Storage {
    private let scoreKey = "score"
    private let bestScoreKey = "bestScore"
    private let boardKey = "onGoingGame"
    private let movesKey = "moves"
    
    func reset() {
        save(score: 0)
        save(bestScore: 0)
        save(board: [[]])
        save(moves : 0)
    }
    
    var score: Int {
        UserDefaults().integer(forKey: scoreKey)
    }

    var bestScore: Int {
        UserDefaults().integer(forKey: bestScoreKey)
    }

    var board: [[Int]]? {
        UserDefaults().object(forKey: boardKey) as? [[Int]]
    }
    var moves: Int {
        UserDefaults().integer(forKey: movesKey)
    }
    
    func save(score: Int) {
        UserDefaults().set(score, forKey: scoreKey)
    }
    
    func save(bestScore: Int) {
        UserDefaults().set(bestScore, forKey: bestScoreKey)
    }

    func save(board: [[Int]]) {
        UserDefaults().set(board, forKey: boardKey)
    }
    
    func save(moves: Int) {
        UserDefaults().set(moves, forKey: movesKey)
    }
}
