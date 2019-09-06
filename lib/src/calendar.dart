import 'package:meta/meta.dart';

class Calendar
{
  String serviceId;
  String startDate;
  String endDate;
  String monday;
  String tuesday;
  String wednesday;
  String thursday;
  String friday;
  String saturday;
  String sunday;

  Calendar(this.serviceId, this.startDate, this.endDate, this.monday, this.tuesday, this.wednesday, this.thursday, this.friday, this.saturday, this.sunday);
}

class CalendarManager
{
  List<Calendar> _calendar;
  
  CalendarManager(){
    _calendar = List();
  }

  addCalendar({@required String calendarServiceId, String calendarStartDate,  String calendarEndDate, String mondayService, String tuesdayService, String wednesdayService,
  String thursdayService, String fridayService, String saturdayService, String sundayService}){
    _calendar.add(Calendar(calendarServiceId, calendarStartDate, calendarEndDate,mondayService, tuesdayService,wednesdayService,thursdayService,fridayService,saturdayService, sundayService));
  }

  Calendar getCalendar(index) => _calendar[index];

  removeCalendar(index) => _calendar[index];

}