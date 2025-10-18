

import 'package:animals_app/core/constant/app_strings.dart';
import 'package:animals_app/core/route/app_route.dart';
import 'package:animals_app/core/widgets/elevated_button.dart';
import 'package:animals_app/feature/home/data/repository/home_repository.dart';
import 'package:animals_app/feature/home/presentation/home.dart';
import 'package:animals_app/feature/home/presentation/widget/bottom_navigation.dart';
import 'package:animals_app/feature/onboarding/presentation/onboarding_screen.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

void main() {
  final sl = GetIt.instance;

  setUp(() {
    sl.reset(); // تأكدي إن مافيش حاجة متسجلة قبل كده
    sl.registerLazySingleton<HomeRepository>(() => MockHomeRepository());
  });
  testWidgets("test that app rout without any problem to onboarding", (WidgetTester tester) async {
    final route=RouteGenerator.generateRoute(
      const RouteSettings(name: '/'),
    );
    await tester.pumpWidget(MaterialApp(
      onGenerateRoute: (_) => route,
    ));
    await tester.pump();
    expect(find.byType(OnboardingScreen), findsOneWidget);
  });

  testWidgets("test that app rout without any problem to home", (WidgetTester tester) async {
    final sl = GetIt.instance;
    sl.reset(); // تأكدي إن مافيش حاجة متسجلة قبل كده
    sl.registerLazySingleton<HomeRepository>(() => MockHomeRepository());
    final route=RouteGenerator.generateRoute(
      const RouteSettings(name: '/'),
    );
    await tester.pumpWidget(MaterialApp(
      onGenerateRoute: (_) => route,
    ));
    await tester.pump();
    await tester.ensureVisible(find.byType(CustomElevatedButton));
    await tester.tap(find.byType(CustomElevatedButton));
    await tester.pumpAndSettle();
    expect(find.byType(Home), findsOneWidget);
  });

/*
  testWidgets("test that app rout without any problem to home", (WidgetTester tester) async {



    final route=RouteGenerator.generateRoute(
      const RouteSettings(name: '/home'),
    );
    await tester.pumpWidget(MaterialApp(

      onGenerateRoute: (_) => route,
    ));
    await tester.pump();
    expect(find.byType(Home), findsOneWidget);
  });*/



}




/*
void main() {
  late GetIt getIt;

  setUp(() {
    getIt = GetIt.instance;
    getIt.reset();

    // Register mock repository
    final mockRepo = MockHomeRepository();
    getIt.registerLazySingleton<HomeRepository>(() => mockRepo);

    // Mock the getCatImages method to return empty list
    when(() => mockRepo.getCatImages())
        .thenAnswer((_) async => ApiResult.success([]));
  });

  tearDown(() {
    getIt.reset();
  });

  group('RouteGenerator Tests', () {
    testWidgets('should navigate to onboarding screen for root route',
            (WidgetTester tester) async {
          // Arrange & Act
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: AppRoutes.onboarding,
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
          await tester.pumpAndSettle();

          // Assert
          expect(find.byType(OnboardingScreen), findsOneWidget);
        });

    testWidgets('should navigate to home screen',
            (WidgetTester tester) async {
          // Arrange & Act
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: AppRoutes.home,
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
          await tester.pumpAndSettle();

          // Assert
          expect(find.byType(Home), findsOneWidget);
        });

    testWidgets('should show error screen for undefined route',
            (WidgetTester tester) async {
          // Arrange & Act
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: '/unknown',
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
          await tester.pumpAndSettle();

          // Assert
          expect(find.textContaining('No route defined'), findsOneWidget);
        });

    testWidgets('should navigate from onboarding to home when button is pressed',
            (WidgetTester tester) async {
          // Arrange
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: AppRoutes.onboarding,
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
          await tester.pumpAndSettle();

          // Verify we're on onboarding
          expect(find.byType(OnboardingScreen), findsOneWidget);

          // Act - Find and tap the "Get started" button
          final button = find.text('Get started');
          expect(button, findsOneWidget);

          await tester.tap(button);
          await tester.pumpAndSettle();

          // Assert - Should be on home screen now
          expect(find.byType(Home), findsOneWidget);
          expect(find.byType(OnboardingScreen), findsNothing);
        });
  });

  group('Navigation Flow Integration Tests', () {
    testWidgets('should maintain state when navigating back',
            (WidgetTester tester) async {
          // Arrange
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: AppRoutes.onboarding,
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
          await tester.pumpAndSettle();

          // Act - Navigate to home
          await tester.tap(find.text('Get started'));
          await tester.pumpAndSettle();

          expect(find.byType(Home), findsOneWidget);

          // Navigate back
          final BuildContext context = tester.element(find.byType(Home));
          Navigator.of(context).pop();
          await tester.pumpAndSettle();

          // Assert - Should be back on onboarding
          expect(find.byType(OnboardingScreen), findsOneWidget);
        });

    testWidgets('should handle multiple navigation events',
            (WidgetTester tester) async {
          // Arrange
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: AppRoutes.onboarding,
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
          await tester.pumpAndSettle();

          // Act - Navigate to home
          await tester.tap(find.text('Get started'));
          await tester.pumpAndSettle();
          expect(find.byType(Home), findsOneWidget);

          // Navigate back
          final context1 = tester.element(find.byType(Home));
          Navigator.of(context1).pop();
          await tester.pumpAndSettle();
          expect(find.byType(OnboardingScreen), findsOneWidget);

          // Navigate to home again
          await tester.tap(find.text('Get started'));
          await tester.pumpAndSettle();
          expect(find.byType(Home), findsOneWidget);
        });
  });
}*/