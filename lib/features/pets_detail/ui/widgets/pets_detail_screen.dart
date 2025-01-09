import 'package:flutter/material.dart';

import '../../../../core/data/model/cats_model.dart';

class PetsDetailScreen extends StatefulWidget {

  final Cat cat;
  const PetsDetailScreen({super.key, required this.cat});



  @override
  State<PetsDetailScreen> createState() => _PetsDetailScreenState();
}

class _PetsDetailScreenState extends State<PetsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}