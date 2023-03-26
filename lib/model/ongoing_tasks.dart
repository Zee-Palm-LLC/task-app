class OngoingTasks {
  String startingTime;
  String endingTime;
  bool isBooked;
  OngoingTasks({
    required this.startingTime,
    required this.endingTime,
    required this.isBooked,
  });
}

List<OngoingTasks> ongoingTaskList = [
  OngoingTasks(startingTime: '08 AM', endingTime: '09 AM', isBooked: true),
  OngoingTasks(startingTime: '10 AM', endingTime: '10 AM', isBooked: false),
  OngoingTasks(startingTime: '11 AM', endingTime: '12 PM', isBooked: true),
  OngoingTasks(startingTime: '01 PM', endingTime: '02 PM', isBooked: true),
];
