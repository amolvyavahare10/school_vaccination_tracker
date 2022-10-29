import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int countTotalStudents(List<StudentsRecord>? studentCollection) {
  // return count of documents
  if (studentCollection != null) {
    return studentCollection.length;
  }
  return 0;
}

int countVaccinatedStudents(List<StudentsRecord>? studentCollection) {
  // return count of documents if vaccinationStatus field is 'Two Dose Complete'
  var count = 0;
  studentCollection?.forEach((element) {
    if (element.vaccinationStatus == 'Two Dose Complete') {
      count++;
    }
  });
  return count;
}

int countDrives(List<DrivesRecord>? drivesCollection) {
  // return count of documents
  if (drivesCollection == null) return 0;
  return drivesCollection.length;
}

int countCompletedDrives(List<DrivesRecord>? drivesCollection) {
  // return count of documents if field driveState is "true"
  if (drivesCollection == null) return 0;
  var count = 0;
  drivesCollection?.forEach((element) {
    if (element.driveState == true) {
      count++;
    }
  });
  return count;
}
