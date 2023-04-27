import 'package:flutter/material.dart';

class SeatLayout extends StatefulWidget {
  @override
  _SeatLayoutState createState() => _SeatLayoutState();
}

class _SeatLayoutState extends State<SeatLayout> {
  int _selectedSeatIndex = -1;

  List<Widget> _buildSeats(int rowCount, int colCount) {
    List<Widget> seats = [];
    for (int row = 0; row < rowCount; row++) {
      List<Widget> rowSeats = [];
      for (int col = 0; col < colCount; col++) {
        int seatIndex = row * colCount + col;
        bool isSelected = _selectedSeatIndex == seatIndex;
        rowSeats.add(
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedSeatIndex = seatIndex;
              });
            },
            child: Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(8),
              color: isSelected ? Colors.blue : Colors.grey[300],
              child: Text(
                'Seat ${seatIndex + 1}',
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        );
      }
      seats.add(Row(children: rowSeats));
    }
    return seats;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seat Layout'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: _buildSeats(6, 6),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _selectedSeatIndex >= 0
                ? () {
                    print('Selected seat ${_selectedSeatIndex + 1} is booked!');
                  }
                : null,
            child: Text('Book Seat'),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}