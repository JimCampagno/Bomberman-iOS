//
//  Bomberman.swift
//  Bomberman
//
//  Created by Jim Campagno on 9/29/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

enum BoardSize: Int {
    
    case small = 5, medium = 10, large = 20
    
    var grid: Int {
        return self.rawValue * self.rawValue
    }
    
}

protocol GamePiece {
    
}

enum BoardType: GamePiece {
    case player
    case emptySpace
    case bomb
}


final class Bomberman {
    
    let boardSize: BoardSize
    lazy var grid: Int = { self.boardSize.grid }()
    private(set) var numberOfEnemies: Double!
    private(set) var board: [[BoardType]] = []
    
    init(boardSize: BoardSize = .small) {
        self.boardSize = boardSize
        setupBoard()
    }
    
    private func setupBoard() {
        for _ in 0..<boardSize.rawValue {
            var row: [BoardType] = []
            for _ in 0..<boardSize.rawValue {
                row.append(BoardType.emptySpace)
            }
            board.append(row)
        }
    }
    
    func create(enemiesInTheAmountOf number: Int) -> Bool {
        guard number >= grid / 2 else { return false }
        
        return true
    }
    

}

