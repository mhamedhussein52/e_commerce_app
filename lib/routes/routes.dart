import 'package:e_commerce_app/logic/bindings/auth_binding.dart';
import 'package:e_commerce_app/logic/bindings/main_bindings.dart';
import 'package:e_commerce_app/logic/bindings/products_binging.dart';
import 'package:e_commerce_app/view/screens/all_product_screen.dart';
import 'package:e_commerce_app/view/screens/auth/login_screen.dart';
import 'package:e_commerce_app/view/screens/auth/sign_up_screen.dart';
import 'package:e_commerce_app/view/screens/cart_screen.dart';
import 'package:e_commerce_app/view/screens/home_screen.dart';
import 'package:e_commerce_app/view/screens/main_screen.dart';
import 'package:e_commerce_app/view/screens/on_board.dart';
import 'package:get/get.dart';

import '../view/screens/auth/forget_pass_screen.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes {
  //initialPage
  static const welcome = Routes.welcomeScreen;
  static const main = Routes.mainScreen;
  static const login = Routes.loginScreen;

  //pageRoute

  static final route = [
    GetPage(
      name: Routes.onBoardScreen,
      page: () {
        return const OnBoardScreen();
      },
    ),
    GetPage(
      name: Routes.welcomeScreen,
      page: () {
        return const WelcomeScreen();
      },
    ),
    GetPage(
      name: Routes.loginScreen,
      binding: AuthBindings(),
      page: () {
        return LoginScreen();
      },
    ),
    GetPage(
      name: Routes.signUpScreen,
      binding: AuthBindings(),
      page: () {
        return SignUpScreen();
      },
    ),
    GetPage(
      name: Routes.cartScreen,
      binding: AuthBindings(),
      page: () {
        return const CartScreen();
      },
    ),
    GetPage(
      name: Routes.allProductScreen,
      bindings: [
        AuthBindings(),
        MainBindings(),
        ProductsBinding(),
      ],
      page: () {
        return AllProductsScreen();
      },
    ),
    GetPage(
      name: Routes.mainScreen,
      bindings: [
        AuthBindings(),
        MainBindings(),
        ProductsBinding(),
      ],
      page: () {
        return MainScreen();
      },
    ),
    GetPage(
      name: Routes.homeScreen,
      binding: ProductsBinding(),
      page: () {
        return HomeScreen();
      },
    ),
    GetPage(
      name: Routes.forgetPassScreen,
      binding: AuthBindings(),
      page: () {
        return ForgetPassScreen();
      },
    ),
  ];
}

class Routes {
  static const onBoardScreen = '/onBoardScreen';
  static const welcomeScreen = '/welcomeScreen';
  static const forgetPassScreen = '/forgetPassScreen';
  static const mainScreen = '/mainScreen';
  static const loginScreen = '/loginScreen';
  static const allProductScreen='/allProductScreen';
  static const signUpScreen = '/signUpScreen';
  static const homeScreen = '/homeScreen';
  static const cartScreen = '/cartScreen';
}
