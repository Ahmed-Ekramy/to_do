import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/models/taskes_mudel.dart';

class firebaseFunction {
  void addTaskes(TaskeModel model) {
    FirebaseFirestore.instance.collection("Taskes").add(model.toJson());
  }
}
