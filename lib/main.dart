import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/theme/app_theme.dart';
import 'core/constants/app_constants.dart';
import 'features/auth/splash_screen.dart';
import '../../models/chat_message_model.dart';
import 'features/auth/login_screen.dart';
import 'features/auth/signup_screen.dart';
import 'features/auth/forgot_password_screen.dart';
import 'features/dashboard/dashboard_screen.dart';
import 'features/chat/chat_screen.dart';
import 'features/agents/agents_screen.dart';
import 'features/documents/documents_screen.dart';
void main() {
  runApp(
    const ProviderScope(
      child: NexoraApp(),
    ),
  );
}

class NexoraApp extends StatelessWidget {
  const NexoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NEXORA AI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: AppConstants.routeSplash,
      routes: {
        AppConstants.routeSplash: (context) => const SplashScreen(),
        AppConstants.routeLogin: (context) => const LoginScreen(),
        AppConstants.routeSignup: (context) => const SignupScreen(),
        AppConstants.routeForgotPassword: (context) =>
            const ForgotPasswordScreen(),
        AppConstants.routeDashboard: (context) => const DashboardScreen(),
        AppConstants.routeChat: (context) => const ChatScreen(),
        AppConstants.routeAgents: (context) => const AgentsScreen(),
        AppConstants.routeDocuments: (context) => const DocumentsScreen(),
      },
    );
  }
}