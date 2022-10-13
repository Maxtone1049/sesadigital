import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:sesa/onboard.dart';
import 'package:sesa/screens/Services/Pages/Artisan/book_artsian.dart';
import 'package:sesa/screens/Services/Pages/Artisan/view_artisan.dart';
import 'package:sesa/screens/Wallet/components/bank_transfer.dart';
import 'package:sesa/screens/Wallet/trans_details.dart';
import 'package:sesa/screens/Wallet/trans_history.dart';
import 'package:sesa/screens/Wallet/wallet.dart';
import 'package:sesa/home.dart';
import 'package:sesa/screens/Booking/Pages/Events/add_event.dart';
import 'package:sesa/screens/Booking/Pages/Events/event_details_scheduled.dart';
import 'package:sesa/screens/Booking/Pages/Events/event_details_today.dart';
import 'package:sesa/screens/Booking/Pages/Events/event_history.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/add_visitors.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/visitor_details_scheduled.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/visitor_details_today.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/visitor_history.dart';
import 'package:sesa/screens/Booking/booking.dart';
import 'package:sesa/screens/Profile/profile_screen.dart';
import 'package:sesa/screens/Services/Pages/EstatePayment/choose_payment.dart';
import 'package:sesa/screens/Services/Pages/Energy/energy_token.dart';
import 'package:sesa/screens/Services/Pages/EstatePayment/estate_next.dart';
import 'package:sesa/screens/Services/Pages/EstatePayment/estate_payment.dart';
import 'package:sesa/screens/Services/Pages/Artisan/hire_artisan.dart';
import 'package:sesa/screens/Services/Pages/EstatePayment/paid_full.dart';
import 'package:sesa/screens/Services/Pages/Vote/vote_election.dart';
import 'package:sesa/screens/Services/services.dart';
import 'package:sesa/screens/SignIn/signin.dart';
import 'package:sesa/screens/SignUp/signup.dart';
import 'package:sesa/screens/dashboard/dashboard.dart';
import 'package:sesa/splash.dart';

appRoutes() => [
      GetPage(
        name: '/choosepart',
        page: () => PaymentPart(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/payment',
        page: () => EstatePayment(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/paypage',
        page: () => ViewPaymentDetails(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
         GetPage(
        name: '/transdetails',
        page: () => TransDetails(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/transhist',
        page: () => TransHistory(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/banktf',
        page: () => BankTransfer(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/addartisan',
        page: () => AddArtisan(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/paid',
        page: () => PaymentDetails(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/viewartisanpage',
        page: () => ArtisanView(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/artisan',
        page: () => HireArtisan(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/energy',
        page: () => EnergyToken(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/vote',
        page: () => VoteScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/splash',
        page: () => SplashScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/signin',
        page: () => SignIn(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/signup',
        page: () => SignUp(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/onboard',
        page: () => OnBoardingPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/home',
        page: () => HomePage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/dashboard',
        page: () => Dashboard(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/booking',
        page: () => BookingScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/user',
        page: () => ProfileScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/visit_today',
        page: () => VisitorDetails(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/add_visit',
        page: () => AddVisitor(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/visit_schedule',
        page: () => VisitorScheduled(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/visit_history',
        page: () => VisitorHistory(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/add_event',
        page: () => AddEvent(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/event_schedule',
        page: () => EventScheduled(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/event_today',
        page: () => EventDetails(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/event_history',
        page: () => EventHistory(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/services',
        page: () => Services(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/wallet',
        page: () => WalletPage(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 200),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
