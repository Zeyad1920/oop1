void main(){
  Holiday independenceDay = Holiday("Independence Day", 4, "July");
  
  Holiday christmas = Holiday("Christmas", 25, "December");

  
  print("Independence Day & Christmas in same month: ${Holiday.inSameMonth(independenceDay, christmas)}"); // false

  
  List<Holiday> holidayList = [independenceDay, christmas,];
  print("Average day: ${Holiday.avgDate(holidayList)}"); 

}

class Holiday {
  late String name;
  late int day;
  late String month;
  Holiday(this.name, this.day, this.month);


   static inSameMonth(Holiday h1, Holiday h2) {
    return h1.month.toLowerCase() == h2.month.toLowerCase();
  }


  static double avgDate(List<Holiday> holidays) {
   

    int sum = 0;
    for (Holiday holiday in holidays) {
      sum += holiday.day;
    }

    return sum / holidays.length;
  }

}



