// import 'package:flutter/material.dart';
// import 'package:kartal/kartal.dart';

// class DenemeView extends StatefulWidget {
//   const DenemeView({Key? key}) : super(key: key);

//   @override
//   State<DenemeView> createState() => _DenemeViewState();
// }

// class _DenemeViewState extends State<DenemeView> {
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: Row(
//         children: [
//           FloatingActionButton(onPressed: () {
//             scrollToItem(context, itemKey);
//           }),
//           FloatingActionButton(
//             onPressed: () {
//               scrollToItem(context, itemKey2);
//             },
//             child: const Icon(Icons.add),
//           ),
//         ],
//       ),
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//           child: Column(
//         // children: [
//           Container(
//             color: Colors.red,
//             height: context.dynamicHeight(1),
//             width: context.dynamicWidth(1),
//           ),
//           Container(
//             key: itemKey,
//             color: Colors.blue,
//             height: context.dynamicHeight(1),
//             width: context.dynamicWidth(1),
//           ),
//           Container(
//             key: itemKey2,
//             color: Colors.black,
//             height: context.dynamicHeight(1),
//             width: context.dynamicWidth(1),
//           )
//         ],
//       )),
//     );
//   }
// }
