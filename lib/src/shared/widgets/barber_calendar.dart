import 'package:barber_shop_app/src/agendamento/agendamento_module.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import 'barber_colors.dart';

class BarberCalendar extends StatelessWidget {
  //const BarberCalendar({Key key}) : super(key: key);
  CalendarController _calendarController;
  BarberCalendar(this._calendarController);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      margin: EdgeInsets.only(left: 50, right: 50, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          )
        ],
      ),
      child: TableCalendar(
        locale: 'pt_BR',
        startDay: DateTime.now().add(Duration(days: -1)),
        availableGestures: AvailableGestures.horizontalSwipe,
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(color: Colors.black),
          weekendStyle: TextStyle(color: BarberColors.silver),
        ),
        calendarController: _calendarController,
        onDaySelected: (date, t) async {
          await print(date);
        },
        calendarStyle: CalendarStyle(
            outsideWeekendStyle: TextStyle(color: Colors.black26),
            outsideStyle: TextStyle(color: Colors.black26),
            holidayStyle: TextStyle(color: Colors.red[800]),
            weekendStyle: TextStyle(color: Colors.black),
            markersColor: BarberColors.golden,
            todayColor: BarberColors.silver,
            selectedColor: BarberColors.golden),
        headerStyle: HeaderStyle(
            formatButtonVisible: false,
            centerHeaderTitle: true,
            titleTextStyle: TextStyle(
                color: BarberColors.golden,
                fontSize: 18,
                fontWeight: FontWeight.bold),
            leftChevronIcon: Icon(
              Icons.chevron_left,
              color: BarberColors.golden,
            ),
            rightChevronIcon: Icon(
              Icons.chevron_right,
              color: BarberColors.golden,
            ),
            titleTextBuilder: (DateTime date, dynamic d) {
              return DateFormat('dd MMM yyyy', 'pt_BR')
                  .format(date)
                  .toString()
                  .toUpperCase();
            }),
      ),
    );
  }
}
