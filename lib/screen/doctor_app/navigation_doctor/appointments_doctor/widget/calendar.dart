// import 'package:flutter/material.dart';

// class CalendarScreen extends StatefulWidget {
//   const CalendarScreen({super.key});

//   @override
//   _CalendarScreenState createState() => _CalendarScreenState();
// }

// class _CalendarScreenState extends State<CalendarScreen> {
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         TableCalendar(
//           firstDay: DateTime.utc(2021, 1, 1),
//           lastDay: DateTime.utc(2030, 12, 31),
//           focusedDay: _focusedDay,
//           calendarFormat: _calendarFormat,
//           selectedDayPredicate: (day) {
//             // Use `selectedDayPredicate` to determine which day is currently selected.
//             // If this returns true, then `day` will be marked as selected.
//             return isSameDay(_selectedDay, day);
//           },
//           onDaySelected: (selectedDay, focusedDay) {
//             setState(() {
//               _selectedDay = selectedDay;
//               _focusedDay = focusedDay; 
//             });
//           },
//           onFormatChanged: (format) {
//             setState(() {
//               _calendarFormat = format;
//             });
//           },
//           onPageChanged: (focusedDay) {
//             _focusedDay = focusedDay;
//           },
//         ),
//       ],
//     );
//   }
// }
