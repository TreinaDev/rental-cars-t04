# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(email: 'user@test.com', password: '12345678',
name: 'Sicrano Fulano')
client = Client.create!(name: 'Fulano Sicrano', email: 'client@test.com',
    cpf: '893.203.383-88')

car_category_a = CarCategory.create!(name: 'A', daily_rate: 100,
                car_insurance: 50,
                third_party_insurance: 30)


model_ka = CarModel.create!(name: 'Ka', year: 2019, manufacturer: 'Ford', 
        motorization: '1.0', car_category: car_category_a,
        fuel_type: 'Flex')

car_category_esp = CarCategory.create!(name: 'Especial', daily_rate: 500,
               car_insurance: 150,
               third_party_insurance: 300)

model_fusion = CarModel.create!(name: 'Fusion Hybrid', year: 2020, manufacturer: 'Ford', 
        motorization: '2.2', car_category: car_category_esp,
        fuel_type: 'Elétrico')

car = Car.create!(license_plate: 'ABC123', color: 'Prata',
car_model: model_ka, mileage: 0)

car_fusion = Car.create!(license_plate: 'XYZ9876', color: 'Azul',
car_model: model_fusion, mileage: 0)

rental = Rental.create!(start_date: Date.current, end_date: 1.day.from_now,
    client: client, car_category: car_category_a,
    user: user)