part of 'task_detail_screen_page.dart';

class _TaskStatusWidget extends StatelessWidget {
  const _TaskStatusWidget({this.isDone = false});

  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (!isDone)
            const CircleAvatar(
              backgroundColor: Color(0xffE3F2FD),
              child: Icon(Icons.timelapse, color: Colors.blue),
            ),
          if (!isDone)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Tugas Dikerjakan'),
            ),
          if (isDone)
            const CircleAvatar(
              backgroundColor: Color(0xffE3F2FD),
              child: Icon(Icons.check, color: Colors.green),
            ),
          if (isDone)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Tugas Selesai'),
            ),
        ],
      ),
    );
  }
}
