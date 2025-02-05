import 'package:bankeep/utils/constants/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreen(),
            '/onboarding': (context) => isOnboardChecked == true ? const OnboardingPage() : const RegisterPage(),
            '/sign_in': (context) => const RegisterPage(),
            '/sign_up': (context) => const LoginPage(),
            '/main': (context) => MainPage()
          }),
    );
  }
}
