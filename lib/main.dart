import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Parse().initialize(
    'vPz8v3o5gAuH8T7jASw9fJlMHJRT62k4NyphpCKX', 
    'https://parseapi.back4app.com/', 
    clientKey: 'lhEUoNJXQ6d0CgI6LGVZFF7MohxW9w8i8EZmw4dE', 
    autoSendSessionId: true,
  );
  runApp(TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      home: LoginScreen(),
    );
  }
}
