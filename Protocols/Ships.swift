enum Direction {
    case north, south, east, west
}

protocol SteerAbility {
    var direction: Direction { get set }
    
    mutating func steerInDirection(direction: Direction )
}


extension SteerAbility {
    mutating func steerInDirection(direction:Direction){
        self.direction = direction
    }
}

class SailBoat : SteerAbility {
    var direction: Direction = .north
    
}

class RowBoat : SteerAbility {
    
    var direction: Direction = .north
    
}

class SteamBoat : SteerAbility {
    var direction: Direction = .north
}
