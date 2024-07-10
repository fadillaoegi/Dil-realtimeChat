import 'package:dilchat/modules/prsentations/screens/auth/sigin_screen.dart';
import 'package:dilchat/modules/prsentations/screens/auth/signup_screen.dart';
import 'package:dilchat/modules/prsentations/screens/chats/chat_room_screen.dart';
import 'package:dilchat/modules/prsentations/screens/home_screen.dart';
import 'package:dilchat/modules/prsentations/screens/profiles/edit_profile_screen.dart';
import 'package:dilchat/modules/prsentations/screens/profiles/profile_screen.dart';
import 'package:dilchat/modules/prsentations/screens/splash_screen.dart';
import 'package:dilchat/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: RouteScreen.splash,
    page: () => const SplashScreen(),
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
    name: RouteScreen.signUp,
    page: () => const SignUpScreen(),
  ),
  GetPage(
    name: RouteScreen.chatRoom,
    page: () => const ChatRoomScreen(),
  ),
];
