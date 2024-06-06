
import 'package:flutter/material.dart';

class CarCategories extends StatefulWidget {
  const CarCategories({super.key});

  @override
  State<CarCategories> createState() => _CarCategoriesState();
}

class _CarCategoriesState extends State<CarCategories> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return const Scaffold(
      backgroundColor: Colors.black,
      // body: StreamBuilder(
      //   stream:
      //       FirebaseFirestore.instance.collection('TypesOfCars').snapshots(),
      //   builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(child: CircularProgressIndicator());
      //     } else if (snapshot.hasError) {
      //       return Center(child: Text('Ошибка: ${snapshot.error}'));
      //     } else if (snapshot.data!.docs.isEmpty) {
      //       return const Center(child: Text('Нет данных'));
      //     }

      //     var data = snapshot.data!.docs
      //         .map((doc) => CloudFireStoreModel.fromMap(
      //             doc.data() as Map<String, dynamic>))
      //         .toList();

      //     return GridView.builder(
      //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2),
      //       itemCount: data.length,
      //       itemBuilder: (context, index) {
      //         var collectionItem = data[index];
      //         return Container(
      //           height: h * 0.2,
      //           width: w,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(24),
      //             color: Colors.transparent,
      //             image: DecorationImage(
      //               image: NetworkImage(collectionItem.image),
      //             ),
      //           ),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             children: [
      //               Text(
      //                 collectionItem.type,
      //                 style: const TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 24,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}
