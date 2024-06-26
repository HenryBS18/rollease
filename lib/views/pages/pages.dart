import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:rollease/bloc/auth_bloc/auth_bloc.dart';
import 'package:rollease/bloc/current_station_bloc/current_station_bloc.dart';
import 'package:rollease/bloc/mode_bloc/mode_bloc.dart';
import 'package:rollease/bloc/photo_bloc/photo_bloc.dart';
import 'package:rollease/bloc/selected_vehicle_bloc/selected_vehicle_bloc.dart';
import 'package:rollease/models/history.dart';
import 'package:rollease/models/onboarding.dart';
import 'package:rollease/models/onboarding_item.dart';
import 'package:rollease/models/station.dart';
import 'package:rollease/models/user.dart';
import 'package:rollease/services/auth_service.dart';
import 'package:rollease/services/station_service.dart';
import 'package:rollease/utils/custom_colors.dart';
import 'package:rollease/utils/utils.dart';
import 'package:rollease/views/widgets/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

part 'splash_screen.dart';
part 'home_page.dart';
part 'profile_page.dart';
part 'riding_history_page.dart';
part 'promo_page.dart';
part 'onboarding_page.dart';
part 'login_page.dart';
part 'register_page.dart';
part 'terms_and_conditions_page.dart';
part 'payment_page.dart';
part 'booking_page.dart';
part 'tutorial_booking_page.dart';
part 'how_to_ride_page.dart';
part 'scan_qr_page.dart';
part 'bill_info_page.dart';
part 'photo_page.dart';
part 'photo_result_page.dart';
