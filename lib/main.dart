// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_project/utils/constants/exports.dart';

bool? isOnboardChecked;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  SharedPreferences prefs = await SharedPreferences.getInstance();
  isOnboardChecked = prefs.getBool('isOnboardChecked') ?? false;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => NavBarProvider())
      ],
      child: DevicePreview(
        enabled: false,
        builder: (context) => const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      useInheritedMediaQuery: true,
      builder: (context, child) => MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: AppTheme.lightTheme,
          // darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          initialRoute: '/',
          routes: {
            '/': (context) => SplashScreen(),
            '/onboarding': (context) =>
                isOnboardChecked == true ? OnboardingPage() : RegisterPage(),
            '/sign_in': (context) => RegisterPage(),
            '/sign_up': (context) => LoginPage(),
            '/main': (context) => MainPage()
          }),
    );
  }
}
