import 'package:flutter/material.dart';
import 'package:love_in_store/screens/dsr_incentive_approval_screen.dart';
import 'package:love_in_store/screens/dsr_incentive_status_screen.dart';
import 'package:love_in_store/screens/login_screen.dart';
import 'package:love_in_store/screens/manage_dsr_screen.dart';
import 'package:love_in_store/screens/program_details_screen.dart';
import 'package:love_in_store/screens/settings_screen.dart';

List<Map<String, dynamic>> drawerItems = [
  {
    'icon' : Icons.details,
    'title' : 'Program Details',
    'navigate' : ProgramDetails.id
  },
  {
    'icon' : Icons.person,
    'title' : 'Manage DSR',
    'navigate' : ManageDSR.id
  },
  {
    'icon' : Icons.list,
    'title' : 'DSR Incentive Approval',
    'navigate' : DSRIncentiveApproval.id
  },
  {
    'icon' : Icons.list_alt,
    'title' : 'DSR Incentive Status',
    'navigate' : DSRIncentiveStatus.id
  },
  {
    'icon' : Icons.settings,
    'title' : 'Settings',
    'navigate' : Settings.id
  },
  {
    'icon' : Icons.logout,
    'title' : 'Logout',
    'navigate' : LoginScreen.id
  },
];