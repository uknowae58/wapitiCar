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

int prixTotal(
  int? prix,
  int? jour,
) {
  int result = 0;
  result = prix! * jour!;
  return result;
}

bool searchFunction(
  String? searchFor,
  String? searchIn,
) {
  return searchIn!.toLowerCase().contains(searchFor!.toLowerCase());
}

bool checkQueryDate(DateTime? dateTime) {
  bool done;

  if (dateTime != null) {
    done = true;
  } else {
    done = false;
  }
  return done;
}

bool checkUploadPP(String? uploadPhoto) {
  bool tmp;
  String empty;
  empty = "";

  if (uploadPhoto != empty) {
    tmp = true;
  } else {
    tmp = false;
  }
  return tmp;
}

String translation(String actualPhoto) {
  String a;
  a = actualPhoto;
  return a;
}
