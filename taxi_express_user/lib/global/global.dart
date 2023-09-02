import 'package:firebase_auth/firebase_auth.dart';
import 'package:taxi_express_user/model/user_model.dart';

import '../model/direction_details_info.dart';



final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;

UserModel? userModelCurrentInfo;
List dList = []; //online-active drivers Information List

DirectionDetailsInfo? tripDirectionDetailsInfo;
String? chosenDriverId="";

String cloudMessagingServerToken = "key=AAAAm7XXG_Y:APA91bFPLlC6Qowq8G2m60AkE3e3maW-i8jHkSLvbP2fmvarc3yPySGvqMPQjBfGtH0zhaInpA_Uz0bTVCUjOeU7Yqn8ql8sOcWJYkuW9q3aHucg8rz1tGi52SZ08IIQ-N0QadDRj9vg";
String userDropOffAddress = "";

String driverCarDetails="";
String driverName="";
String driverPhone="";

double countRatingStars=0.0;
String titleStarsRating="";