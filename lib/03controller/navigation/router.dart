


import 'package:flutter/material.dart';
import 'package:jobsque2/02view/screens/02account/accountfinish.dart';
import 'package:jobsque2/02view/screens/02account/signup.dart';
import 'package:jobsque2/02view/screens/03homescreen/homescreen1.dart';
import 'package:jobsque2/02view/screens/03homescreen/homescreen2.dart';
import 'package:jobsque2/02view/screens/03homescreen/homescreen3.dart';
import 'package:jobsque2/03controller/navigation/routes.dart';

import '../../02view/screens/01onboarding/01_spalsh.dart';
import '../../02view/screens/01onboarding/02_onboarding.dart';
import '../../02view/screens/02account/checkmail.dart';
import '../../02view/screens/02account/createnewpassword.dart';
import '../../02view/screens/02account/forgetpassword.dart';
import '../../02view/screens/02account/passwordchangedsuccessfully.dart';
import '../../02view/screens/02account/typeofwork.dart';
import '../../02view/screens/02account/locationofwork.dart';
import '../../02view/screens/02account/login.dart';
import '../../02view/screens/03-mainscreenbottombar/00_body_main.dart';
import '../../02view/screens/04applyJob/01_apply_job_main.dart';
import '../../02view/screens/04applyJob/02_personal_Info_apply_form.dart';
import '../../02view/screens/04applyJob/03_type_of_work.dart';
import '../../02view/screens/04applyJob/04_uploade_docs.dart';
import '../../02view/screens/04applyJob/05_back_to_home.dart';
import '../../02view/screens/06messages/messages1.dart';
import '../../02view/screens/07profileandsettings/changepassword.dart';
import '../../02view/screens/07profileandsettings/editprofile.dart';
import '../../02view/screens/07profileandsettings/emailaddress.dart';
import '../../02view/screens/07profileandsettings/helpcenter.dart';
import '../../02view/screens/07profileandsettings/language.dart';
import '../../02view/screens/07profileandsettings/loginandsecurity.dart';
import '../../02view/screens/07profileandsettings/notification.dart';
import '../../02view/screens/07profileandsettings/phonenumber.dart';
import '../../02view/screens/07profileandsettings/portfolio.dart';
import '../../02view/screens/07profileandsettings/privacypolicy.dart';
import '../../02view/screens/07profileandsettings/termsandconditions.dart';
import '../../02view/screens/07profileandsettings/twostepverification1.dart';
import '../../02view/screens/07profileandsettings/twostepverification2.dart';
import '../../02view/screens/07profileandsettings/twostepverification3.dart';
import '../../02view/screens/08appliedjob/appliedjob1.dart';
import '../../02view/screens/08appliedjob/appliedjob2.dart';
import '../../02view/screens/08appliedjob/appliedjob3.dart';
import '../../02view/screens/08appliedjob/appliedjob4.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.splashRoute:
      return MaterialPageRoute(
        builder: (_) =>  Splash(),
        settings: routeSettings,
      );

    case AppRoutes.onBoardingRoute:
      return MaterialPageRoute(
        builder: (_) =>  OnBoarding(),
        settings: routeSettings,
      );

    case AppRoutes.signUp:
      return MaterialPageRoute(
        builder: (_) =>  SignUp(),
        settings: routeSettings,
      );

    case AppRoutes.signIn:
      return MaterialPageRoute(
        builder: (_) =>  SignIn(),
        settings: routeSettings,
      );

    case AppRoutes.typeofwork:
      return MaterialPageRoute(
        builder: (_) =>  TypeOfWork(),
        settings: routeSettings,
      );

    case AppRoutes.locationofwork:
      return MaterialPageRoute(
        builder: (_) =>  LocationOfWork(),
        settings: routeSettings,
      );

    case AppRoutes.accountfinish:
      return MaterialPageRoute(
        builder: (_) =>  AccountFinish(),
        settings: routeSettings,
      );


    case AppRoutes.forgetpassword:
      return MaterialPageRoute(
        builder: (_) =>  ForgetPassword(),
        settings: routeSettings,
      );

    case AppRoutes.checkmail:
      return MaterialPageRoute(
        builder: (_) =>  CheckMail(),
        settings: routeSettings,
      );

    case AppRoutes.createnewpassword:
      return MaterialPageRoute(
        builder: (_) =>  CreateNewPassword(),
        settings: routeSettings,
      );

    case AppRoutes.passwordchangedsuccessfully:
      return MaterialPageRoute(
        builder: (_) =>  PasswordChangedSuccessfully(),
        settings: routeSettings,
      );

    case AppRoutes.homescreen1:
      return MaterialPageRoute(
        builder: (_) =>  HomeScreen1(),
        settings: routeSettings,
      );

    case AppRoutes.homescreen2:
      return MaterialPageRoute(
        builder: (_) =>  HomeScreen2(),
        settings: routeSettings,
      );

    case AppRoutes.homescreen3:
      return MaterialPageRoute(
        builder: (_) =>  HomeScreen3(),
        settings: routeSettings,
      );

    case AppRoutes.bodyMainPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  BodyMainScreen(),
        settings: routeSettings,
      );

    case AppRoutes.applyJobScreen:
      return MaterialPageRoute(
        builder: (_) =>  ApplyJobScreen(),
        settings: routeSettings,
      );

    case AppRoutes.bioDataScreen:
      return MaterialPageRoute(
        builder: (_) =>  BioDataScreen(),
        settings: routeSettings,
      );


    case AppRoutes.typeOfWorkScreen:
      return MaterialPageRoute(
        builder: (_) =>  TypeOfWorkScreen(),
        settings: routeSettings,
      );

    case AppRoutes.uploadDocsScreen:
      return MaterialPageRoute(
        builder: (_) =>  UploadDocsScreen(),
        settings: routeSettings,
      );

    case AppRoutes.backToHomeScreen:
      return MaterialPageRoute(
        builder: (_) =>  BackToHomeScreen(),
        settings: routeSettings,
      );

    case AppRoutes.messages1:
      return MaterialPageRoute(
        builder: (_) =>  Messages1(),
        settings: routeSettings,
      );


    case AppRoutes.profilePrivacyPolicyRoute:
      return MaterialPageRoute(
        builder: (_) =>  PrivacyPolicyScreen(),
        settings: routeSettings,
      );

    case AppRoutes.profileTermsNConditionsRoute:
      return MaterialPageRoute(
        builder: (_) =>  TermsNConditionsScreen(),
        settings: routeSettings,
      );


    case AppRoutes.editProfile:
      return MaterialPageRoute(
        builder: (_) =>  EditProfileScreen(),
        settings: routeSettings,
      );

    case AppRoutes.portfolio:
      return MaterialPageRoute(
        builder: (_) =>  PortfolioScreen(),
        settings: routeSettings,
      );

    case AppRoutes.language:
      return MaterialPageRoute(
        builder: (_) =>  LanguageScreen(),
        settings: routeSettings,
      );

    case AppRoutes.notification:
      return MaterialPageRoute(
        builder: (_) =>  NotificationScreen(),
        settings: routeSettings,
      );


    case AppRoutes.loginandsecurity:
      return MaterialPageRoute(
        builder: (_) =>  LoginAndSecurityScreen(),
        settings: routeSettings,
      );

    case AppRoutes.profileLoginNSecurityEmailAddressRoute:
      return MaterialPageRoute(
        builder: (context) => const EmailAddressScreen(),
        settings: routeSettings,
      );

    case AppRoutes.profileLoginNSecurityPhoneNoRoute:
      return MaterialPageRoute(
        builder: (context) => const PhoneNoUpdateScreen(),
        settings: routeSettings,
      );
    case AppRoutes.profileLoginNSecurityChangePassRoute:
      return MaterialPageRoute(
        builder: (context) => const ChangePasswordScreen(),
        settings: routeSettings,
      );

    case AppRoutes.profileLoginNSecurity2StepVerificationRoute:
      return MaterialPageRoute(
        builder: (context) => const TwoStepVerificationScreen(),
        settings: routeSettings,
      );

    case AppRoutes.profileLoginNSecurity2StepVerificationPhoneNoRoute:
      return MaterialPageRoute(
        builder: (context) => const TwoStepAddPhoneNumberScreen(),
        settings: routeSettings,
      );

    case AppRoutes.profileLoginNSecurity2StepVerification6DigitRoute:
      return MaterialPageRoute(
        builder: (context) => const TwoStep6DigitVerificationScreen(),
        settings: routeSettings,
      );

    case AppRoutes.profileHelpCenterRoute:
      return MaterialPageRoute(
        builder: (context) => const HelpCenterScreen(),
        settings: routeSettings,
      );

    case AppRoutes.profileTermsNConditionsRoute:
      return MaterialPageRoute(
        builder: (context) => TermsNConditionsScreen(),
        settings: routeSettings,
      );

    case AppRoutes.profilePrivacyPolicyRoute:
      return MaterialPageRoute(
        builder: (context) => PrivacyPolicyScreen(),
        settings: routeSettings,
      );

    case AppRoutes.appliedjob3:
      return MaterialPageRoute(
        builder: (context) => AppliedJob3(),
        settings: routeSettings,
      );

    case AppRoutes.appliedjob4:
      return MaterialPageRoute(
        builder: (context) => AppliedJob4(),
        settings: routeSettings,
      );

    case AppRoutes.appliedjob1:
      return MaterialPageRoute(
        builder: (context) => AppliedJob1(),
        settings: routeSettings,
      );


    default:
      return MaterialPageRoute(
        builder: (context) =>  Splash(),

        settings: routeSettings,
      );
  }
}