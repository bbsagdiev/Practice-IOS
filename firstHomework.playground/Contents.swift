import Foundation

class Car {
    var brand: String
    var model: String
    var year: Int

    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }

    func displayInfo() {
        print("Brand: \(brand), Model: \(model), Year: \(year)")
    }
}

class BMW: Car {
    var engineCapacity: Double
    var topSpeed: Int

    init(model: String, year: Int, engineCapacity: Double, topSpeed: Int) {
        self.engineCapacity = engineCapacity
        self.topSpeed = topSpeed
        super.init(brand: "Audi", model: model, year: year)
    }

    override func displayInfo() {
        super.displayInfo()
        print("Engine Capacity: \(engineCapacity) L, Top Speed: \(topSpeed) km/h")
    }
}

class Audi: Car {
    var engineCapacity: Double
    var topSpeed: Int

    init(model: String, year: Int, engineCapacity: Double, topSpeed: Int) {
        self.engineCapacity = engineCapacity
        self.topSpeed = topSpeed
        super.init(brand: "Audi", model: model, year: year)
    }

    override func displayInfo() {
        super.displayInfo()
        print("Engine Capacity: \(engineCapacity) L, Top Speed: \(topSpeed) km/h")
    }
}

class Mercedes: Car {
    var engineCapacity: Double
    var topSpeed: Int

    init(model: String, year: Int, engineCapacity: Double, topSpeed: Int) {
        self.engineCapacity = engineCapacity
        self.topSpeed = topSpeed
        super.init(brand: "Audi", model: model, year: year)
    }

    override func displayInfo() {
        super.displayInfo()
        print("Engine Capacity: \(engineCapacity) L, Top Speed: \(topSpeed) km/h")
    }
}

class Toyota: Car {
    var engineCapacity: Double
    var topSpeed: Int

    init(model: String, year: Int, engineCapacity: Double, topSpeed: Int) {
        self.engineCapacity = engineCapacity
        self.topSpeed = topSpeed
        super.init(brand: "Audi", model: model, year: year)
    }

    override func displayInfo() {
        super.displayInfo()
        print("Engine Capacity: \(engineCapacity) L, Top Speed: \(topSpeed) km/h")
    }
}

// Метод для создания автомобилей
func createCars() -> [Car] {
    return [
        BMW(model: "X5", year: 2022, engineCapacity: 2.0, topSpeed: 250),
        Audi(model: "A4", year: 2021, engineCapacity: 2.0, topSpeed: 260),
        Mercedes(model: "S-Class", year: 2020, engineCapacity: 3.0, topSpeed: 240),
        Toyota(model: "Camry", year: 2023, engineCapacity: 3.0, topSpeed: 250),
        BMW(model: "M3", year: 2022, engineCapacity: 3.0, topSpeed: 240),
        Audi(model: "Q7", year: 2021, engineCapacity: 3.0, topSpeed: 250),
        Mercedes(model: "E-Class", year: 2020, engineCapacity: 2.0, topSpeed: 240),
        Toyota(model: "RAVE4", year: 2020, engineCapacity: 2.0, topSpeed: 230)
    ]
}

// Метод для организации гонок
func race(car1: Car, car2: Car) -> Car {
    // Сравнение по году выпуска
    if car1.year > car2.year {
        return car1
    } else {
        return car2
    }
}

func conductRaces(cars: [Car]) {
    guard cars.count % 2 == 0 else {
        print("Number of cars must be even.")
        return
    }

    var raceResults: [Car] = []
    
    for i in stride(from: 0, to: cars.count, by: 2) {
        let winner = race(car1: cars[i], car2: cars[i+1])
        print("Race between \(cars[i].model) and \(cars[i+1].model): Winner is \(winner.model)")
        raceResults.append(winner)
    }

    if raceResults.count == 1 {
        print("Overall Winner: \(raceResults.first!.model)")
    } else {
        conductRaces(cars: raceResults)
    }
}

let cars = createCars()
conductRaces(cars: cars)

