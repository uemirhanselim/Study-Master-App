import 'package:cloud_firestore/cloud_firestore.dart';

final firestore = FirebaseFirestore.instance;
final questionPaperRF = firestore.collection('questionPapers');
