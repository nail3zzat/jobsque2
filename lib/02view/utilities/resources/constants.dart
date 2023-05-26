import 'package:jobsque2/02view/utilities/resources/strings.dart';

import '../../../01model/countrymodel/countrymodel.dart';
import '../../components/employee_model.dart';
import 'assets.dart';

class AppConstants{



   static List<CountryModel> countries = List.generate(
     AppAssets.countryFlags.length,
        (index) => CountryModel(
      id: index+1,
      countryName: AppStrings.countryNames[index],
      flag: AppAssets.countryFlags[index],
    ),
  );


   static List<EmployeeModel> employees = [
     EmployeeModel(
       id: 1,
       name: 'Dimas Adi Saputro',
       jobDegree: 'Senior',
       jobTitle: 'UI/UX Designer',
       workCompany: 'Twitter',
       workDuring: 5,
       photo: AppAssets.countryFlags[6],
     ),
     EmployeeModel(
       id: 2,
       name: 'Syahrul Ramadhani',
       jobDegree: 'Senior',
       jobTitle: 'UI/UX Designer',
       workCompany: 'Twitter',
       workDuring: 5,
       photo: AppAssets.countryFlags[1],
     ),
     EmployeeModel(
       id: 3,
       name: 'Farrel Daniswara',
       jobDegree: 'Senior',
       jobTitle: 'UI/UX Designer',
       workCompany: 'Twitter',
       workDuring: 4,
       photo: AppAssets.countryFlags[2],
     ),
     EmployeeModel(
       id: 4,
       name: 'Azzahra Farrelika',
       jobDegree: '',
       jobTitle: 'UI/UX Designer',
       workCompany: 'Twitter',
       workDuring: 4,
       photo: AppAssets.countryFlags[3],
     ),
     EmployeeModel(
       id: 5,
       name: 'Ferdi Saputra',
       jobDegree: '',
       jobTitle: 'UI/UX Designer',
       workCompany: 'Twitter',
       workDuring: 5,
       photo: AppAssets.countryFlags[4],
     ),
     EmployeeModel(
       id: 6,
       name: 'Dimas Adi Saputro',
       jobDegree: 'Senior',
       jobTitle: 'UI/UX Designer',
       workCompany: 'Twitter',
       workDuring: 5,
       photo: AppAssets.countryFlags[5],
     ),




   ];

//134.209.132.80
 // 167.71.79.133

   static const String workTypeLink ='167.71.79.133/api/user/profile/';
   static const String jobsLink = '167.71.79.133/api/jobs';
   static const String suggestJobsLink = '167.71.79.133/api/jobs/sugest/';
   static const String getChatLink = '167.71.79.133/api/chat?';
   static const String userSendLink = '167.71.79.133/api/chat/user?';
   static const String loginLink = '167.71.79.133/api/auth/login?';
   static const String registerLink ='167.71.79.133/api/auth/register?';
   static const String editProfileLanguageLink = '167.71.79.133/api/user/profile/language/';
   static const String addToFavoritesLink = '167.71.79.133/api/favorites?';
   static const String showFavoritesFromAPILink = '167.71.79.133/api/favorites/';




}


