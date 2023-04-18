import 'package:flutter/material.dart';

class IrtyshInfo extends StatelessWidget {
  const IrtyshInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('река Иртыш'),
          Text(
              ' река, протекающая на территориях Китая (Синьцзян-Уйгурский автономный район), Казахстана и России (Омская и Тюменская области). Является левым притоком Оби[3]. Длина Иртыша составляет 4248 км'),
        ],
      ),
    );
  }
}
