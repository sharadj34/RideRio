import 'package:flutter/material.dart';
import 'explore_cars_screen.dart';
import 'about_screen.dart';
import 'team_screen.dart';
import 'rental_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildCarCard(
      String name,
      String year,
      String capacity,
      String fuel,
      String mileage,
      String transmission,
      String price,
    ) {
      return Container(
        width: 250,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
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
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Center(
                child: Icon(Icons.car_rental, size: 50, color: Colors.blue),
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF424242),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    year,
                    style: const TextStyle(color: Color(0xFF757575)),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.people, size: 16, color: Colors.blue),
                      const SizedBox(width: 5),
                      Text(
                        capacity,
                        style: const TextStyle(color: Color(0xFF757575)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.local_gas_station, size: 16, color: Colors.blue),
                      const SizedBox(width: 5),
                      Text(
                        fuel,
                        style: const TextStyle(color: Color(0xFF757575)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.speed, size: 16, color: Colors.blue),
                      const SizedBox(width: 5),
                      Text(
                        mileage,
                        style: const TextStyle(color: Color(0xFF757575)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.settings, size: 16, color: Colors.blue),
                      const SizedBox(width: 5),
                      Text(
                        transmission,
                        style: const TextStyle(color: Color(0xFF757575)),
                      ),
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
                          fontSize: 16,
                          color: Color(0xFF424242),
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

    Widget _buildStepCard(String title, String description, IconData icon) {
      return Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF424242),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xFF757575),
                    ),
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
        title: const Text('RideRio'),
        actions: [
          IconButton(
            icon: const Icon(Icons.phone),
            onPressed: () {
              // TODO: Implement phone call
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'The easy way to takeover a lease',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF424242),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Live in Delhi, Mumbai and wherever you love to!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF757575),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Search Section
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Car, model, or brand',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Max. daily payment',
                            prefixIcon: const Icon(Icons.attach_money),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExploreCarsScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text('Search'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Featured Cars Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Featured cars',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ExploreCarsScreen(),
                            ),
                          );
                        },
                        child: const Text('View more'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Featured Cars List
                  SizedBox(
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildCarCard(
                          'Nissan Kicks 2021',
                          '2021',
                          '5 People',
                          'Petrol',
                          '15.1km / 1-litre',
                          'Manual',
                          '₹600',
                        ),
                        _buildCarCard(
                          'BMW 520D 2016',
                          '2016',
                          '4 People',
                          'Diesel',
                          '8.2km / 1-litre',
                          'Automatic',
                          '₹950',
                        ),
                        _buildCarCard(
                          'KIA Sonet',
                          '2021',
                          '4 People',
                          'Diesel',
                          '5.3km / 1-litre',
                          'Manual',
                          '₹800',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Steps Section
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Get started with 4 simple steps',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF424242),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildStepCard(
                    'Create a profile',
                    'Sign up within few seconds and enjoy your ride.',
                    Icons.person_add,
                  ),
                  _buildStepCard(
                    'Tell us what car you want',
                    'It\'s our duty to arrange whichever car you want to drive.',
                    Icons.directions_car,
                  ),
                  _buildStepCard(
                    'Match with seller',
                    'Seller\'s details will be provided, contact them and get the deal done.',
                    Icons.handshake,
                  ),
                  _buildStepCard(
                    'Make a deal',
                    'Advance payment and security deposit is necessary for a strong deal.',
                    Icons.payment,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 