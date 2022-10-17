import 'package:cloud_firestore/cloud_firestore.dart';

final firestore = FirebaseFirestore.instance;
final questionPaperRF = firestore.collection('questionPapers');
DocumentReference questionRF({
  required String paperId,
  required String questionId,
}) =>
    questionPaperRF.doc(paperId).collection('questions').doc(questionId);
