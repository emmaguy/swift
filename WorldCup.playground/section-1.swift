// Playground - noun: a place where people can play

import Cocoa

extension Array {
    func randomItem() -> T {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}

var teams = ["Brasil", "Cameroon", "Mexico", "Croatia","Australia", "Chile", "Netherlands", "Spain","Colombia", "Cote d'Ivoire", "Greece", "Japan","Costa Rica", "England", "Italy", "Uruguay","Ecuador", "France", "Honduras", "Switzerland","Argentia", "Bosnia and Hertz", "Iran", "Nigeria","Germany", "Ghana", "Portugal", "United States","Algeria", "Belgium", "Korea Republic", "Russia"]

let people = ["Emma", "Greg", "Luke", "Chris", "Ed"]

let allTeams = teams.count
let teamsEach : Int = allTeams / people.count

for index in 1...teamsEach {
    for (personIndex, element) in enumerate(people) {
        let randomTeam = teams.randomItem()
        
        println(element + " gets " + randomTeam)
        
        // remove randomTeam from the list
        teams = teams.filter( {$0 != randomTeam})
    }
    println("\n")
}

println("loner teams: ")

for (i, team) in enumerate(teams) {
    println(team)
}