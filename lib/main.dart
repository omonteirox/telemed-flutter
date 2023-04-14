import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telemed_app/routes/routes.dart';
import 'package:telemed_app/theme_provider.dart';
import 'package:telemed_app/themes/app_themes.dart';
import 'package:telemed_app/view/home_screen.dart';
import 'package:telemed_app/view/login_screen.dart';
import 'package:telemed_app/view/singin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, theme, _) {
          return MaterialApp(
            title: 'TELEMED-APP',
            theme:
                theme.isDark ? AppThemes().darkTheme : AppThemes().whiteTheme,
            routes: {
              AppRoutes.HOME: (BuildContext context) => const HomeScreen(),
              AppRoutes.LOGIN: (BuildContext context) => LoginScreen(),
              AppRoutes.SIGNON: (BuildContext context) => const SignInScreen(),
            },
            initialRoute: '/',
          );
        },
      ),
    );
  }
}
