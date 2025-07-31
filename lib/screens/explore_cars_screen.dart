import 'package:flutter/material.dart';
import 'rental_screen.dart';

class ExploreCarsScreen extends StatelessWidget {
  const ExploreCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildCarCard(
      String name,
      String year,
      String capacity,
      String fuel,
      String mileage,
      String transmission,
      String price,
    ) {
      return Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: const Center(
                child: Icon(Icons.car_rental, size: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(year),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.people, size: 16),
                      const SizedBox(width: 5),
                      Text(capacity),
                      const SizedBox(width: 20),
                      const Icon(Icons.local_gas_station, size: 16),
                      const SizedBox(width: 5),
                      Text(fuel),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.speed, size: 16),
                      const SizedBox(width: 5),
                      Text(mileage),
                      const SizedBox(width: 20),
                      const Icon(Icons.settings, size: 16),
                      const SizedBox(width: 5),
                      Text(transmission),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$price / day',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RentalScreen(
                                carName: name,
                                price: price,
                              ),
                            ),
                          );
                        },
                        child: const Text('Rent now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Cars'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          buildCarCard(
            'Nissan Kicks 2021',
            '2021',
            '5 People',
            'Petrol',
            '15.1km / 1-litre',
            'Manual',
            '₹600',
          ),
          buildCarCard(
            'BMW 520D 2016',
            '2016',
            '4 People',
            'Diesel',
            '8.2km / 1-litre',
            'Automatic',
            '₹950',
          ),
          buildCarCard(
            'KIA Sonet',
            '2021',
            '4 People',
            'Diesel',
            '5.3km / 1-litre',
            'Manual',
            '₹800',
          ),
          buildCarCard(
            'Mahindra XUV500',
            '2015',
            '4 People',
            'Diesel',
            '17.7km / 1-litre',
            'Automatic',
            '₹620',
          ),
          buildCarCard(
            'Hyundai Verna',
            '2015',
            '4 People',
            'Diesel',
            '17.6km / 1-litre',
            'Manual',
            '₹530',
          ),
          buildCarCard(
            'Mahindra Thar',
            '2021',
            '4 People',
            'Diesel',
            '14.2km / 1-litre',
            'Automatic',
            '₹790',
          ),
        ],
      ),
    );
  }
} 