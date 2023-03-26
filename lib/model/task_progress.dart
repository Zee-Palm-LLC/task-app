// ignore_for_file: public_member_api_docs, sort_constructors_first
class TaskProgress {
  String title;
  double status;
  TaskProgress({
    required this.title,
    required this.status,
  });
}

List<TaskProgress> taskProgressList = [
  TaskProgress(title: 'Completed', status: 22),
  TaskProgress(title: 'In Progress', status: 12),
  TaskProgress(title: 'Ongoing', status: 07),
  TaskProgress(title: 'Waiting for Review', status: 02),
];
