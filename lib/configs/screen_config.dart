import 'package:get/get.dart';
import 'package:realtimechat/modules/prsentations/screens/auth/sigin_screen.dart';
import 'package:realtimechat/modules/prsentations/screens/profiles/edit_profile_screen.dart';
import 'package:realtimechat/modules/prsentations/screens/home_screen.dart';
import 'package:realtimechat/modules/prsentations/screens/profiles/profile_screen.dart';
import 'package:realtimechat/routes/routes.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: RouteScreen.splash,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: RouteScreen.home,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: RouteScreen.profile,
    page: () => const ProfileScreen(),
  ),
  GetPage(
    name: RouteScreen.editProfile,
    page: () => const EditProfileScreen(),
  ),
  GetPage(
    name: RouteScreen.signIn,
    page: () => const SignInScreen(),
  ),
  GetPage(
    name: RouteScreen.splash,
    page: () => const HomeScreen(),
  ),
];
