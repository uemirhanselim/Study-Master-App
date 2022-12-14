import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final firestore = FirebaseFirestore.instance;
final questionPaperRF = firestore.collection('questionPapers');
DocumentReference questionRF({
  required String paperId,
  required String questionId,
}) =>
    questionPaperRF.doc(paperId).collection('questions').doc(questionId);

    // Firebase Storage Reference
    Reference get firebaseStorage => FirebaseStorage.instance.ref();
