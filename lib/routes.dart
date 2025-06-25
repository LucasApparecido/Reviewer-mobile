import 'package:routefly/routefly.dart';

// Importe suas páginas aqui
import 'package:reviewer_mobile/features/auth/login_page.dart' as login_page;
import 'package:reviewer_mobile/features/auth/register_page.dart' as register_page;
import 'package:reviewer_mobile/features/home/home_page.dart' as home_page;
import 'package:reviewer_mobile/features/profile/profile_page.dart' as profile_page;

const String routePathLogin = '/login';
const String routePathRegister = '/register';
const String routePathHome = '/home';
const String routePathProfile = '/profile';
const String routePathCreateReview = '/review/create';

final Map<String, RouteEntity> routePaths = {
  'login': RouteEntity(key: routePathLogin, uri: Uri.parse(routePathLogin)),
  'register': RouteEntity(key: routePathRegister, uri: Uri.parse(routePathRegister)),
  'home': RouteEntity(key: routePathHome, uri: Uri.parse(routePathHome)),
  'profile': RouteEntity(key: routePathProfile, uri: Uri.parse(routePathProfile)),
  'create_review': RouteEntity(key: routePathCreateReview, uri: Uri.parse(routePathCreateReview)),
};

List<RouteEntity> get routes => [
  routePaths['login']!.copyWith(builder: (context, settings) => login_page.LoginPage()),
  routePaths['register']!.copyWith(builder: (context, settings) => register_page.RegisterPage()),
  routePaths['home']!.copyWith(builder: (context, settings) => home_page.HomePage()),
  routePaths['profile']!.copyWith(builder: (context, settings) => profile_page.ProfilePage()),
  // Adicione outras rotas aqui
];