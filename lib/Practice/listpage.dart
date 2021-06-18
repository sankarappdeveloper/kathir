// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'model_prac.dart';
// import 'package:project_1/Practice/task_model.dart';
// class ListPage extends StatelessWidget {
//   // const ListPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           Provider.of<ModelPractice>(context).addTask();
//         },
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(child: Consumer<ModelPractice>(
//             builder: (context, todo, child) {
//               return ListView.builder(itemBuilder: (context, index) {
//                 return ListTile(
//                     title: Text(todo.id), subtitle: Text(todo.title));
//               });
//             },
//           )),
//         ],
//       ),
//     );
//   }
// }
