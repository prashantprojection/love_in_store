import 'package:flutter/material.dart';
import 'package:love_in_store/screens/otp_verification_screen.dart';
import 'package:love_in_store/screens/agreement_screen.dart';
import 'package:love_in_store/screens/bank_details_screen.dart';
import 'package:love_in_store/screens/contact_information_screen.dart';
import 'package:love_in_store/screens/dashboard_screen.dart';
import 'package:love_in_store/screens/distributor_list_screen.dart';
import 'package:love_in_store/screens/dsr_incentive_approval_screen.dart';
import 'package:love_in_store/screens/dsr_incentive_status_screen.dart';
import 'package:love_in_store/screens/dsr_list_screen.dart';
import 'package:love_in_store/screens/loading_screen.dart';
import 'package:love_in_store/screens/login_screen.dart';
import 'package:love_in_store/screens/manage_dsr_screen.dart';
import 'package:love_in_store/screens/my_profile_screen.dart';
import 'package:love_in_store/screens/number_verification_screen.dart';
import 'package:love_in_store/screens/personal_details_screen.dart';
import 'package:love_in_store/screens/program_details_screen.dart';
import 'package:love_in_store/screens/settings_screen.dart';

void main() => runApp(const Proanto());

class Proanto extends StatelessWidget {
  const Proanto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
              .copyWith(secondary: Colors.white)),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        LoadingScreen.id: (context) => const LoadingScreen(),
        Dashboard.id: (context) => const Dashboard(),
        ProgramDetails.id: (context) => const ProgramDetails(),
        ManageDSR.id: (context) => const ManageDSR(),
        DSRIncentiveApproval.id: (context) => const DSRIncentiveApproval(),
        DSRIncentiveStatus.id: (context) => const DSRIncentiveStatus(),
        Settings.id: (context) => const Settings(),
        MyProfile.id: (context) => const MyProfile(),
        DistributorList.id: (context) => const DistributorList(),
        DSRList.id: (context) => const DSRList(),
        PersonalDetailsScreen.id: (context) => const PersonalDetailsScreen(),
        ContactInformationScreen.id: (context) =>
            const ContactInformationScreen(),
        BankDetailsScreen.id: (context) => const BankDetailsScreen(),
        Agreement.id: (context) => const Agreement(),
        NumberVerification.id: (context) => const NumberVerification(),
        OTPVerification.id: (context) => const OTPVerification()
      },
    );
  }
}
