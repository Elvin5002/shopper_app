import 'package:shopper_app/presentation/screens/search_result/search_result_page.dart';

import '../../cubits/order/order_cubit.dart';
import 'index.dart';

class Pager {
  Pager._();

  static Widget get introduction => const IntroductionPage();

  static Widget get signIn => BlocProvider(
        create: (context) => LoginCubit(locator()),
        child: const SignInScreen(),
      );

  static Widget get signUp => const SignUpScreen();

  static Widget productDetails(
    BuildContext context,
    String slug,
    int id,
  ) =>
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => FavoriteCubit(locator())),
          BlocProvider(
            create: (_) => ProductDetailCubit(
              locator(),
              locator(),
            )..getProductDetail(slug),
          ),
          BlocProvider.value(
            value: context.read<HomeCubit>(),
          ),
        ],
        child: ProductDetailsPage(
          id: id,
        ),
      );

  static Widget get order => BlocProvider(
        create: (_) => OrderCubit(locator())..getFavorites(),
        child: const OrderScreen(),
      );

  static Widget get filter => const FilterPage();

  static Widget get notification => const NotificationScreen();

  static Widget get home => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit(locator(), locator())
              ..getCategories()
              ..getProducts(),
          ),
          BlocProvider(
            create: (_) => FavoriteCubit(locator()),
          ),
        ],
        child: const HomeScreen(),
      );

  static Widget get payment => BlocProvider(
        create: (context) => PaymentCubit()..getPaymentDetails(),
        child: const PaymentScreen(),
      );

  static Widget get language => const LanguagesScreen();

  static Widget get forgotPassword => const ForgotPasswordScreen();

  static Widget get notificationList => const NotificationListPageView();

  static Widget get settings => const SettingsScreen();

  static Widget get crateNewPassword => const CreateNewPassword();

  static Widget get verification => const VerificationScreen();

  static Widget get addNewCard => BlocProvider(
        create: (context) => PaymentCubit(),
        child: const AddNewCard(),
      );

  static Widget get profile => const ProfileScreen();

  static Widget get accountEdit => BlocProvider(
        create: (context) => UpdateProfileCubit(locator()),
        child: const AccountEditScreen(),
      );

  static Widget rateProduct(int productId) => BlocProvider(
        create: (context) => RateProductCubit(locator()),
        child: RateProductScreen(productId: productId),
      );

  static Widget get womanCategory => BlocProvider(
        create: (context) => HomeCubit(locator(), locator())..getProducts(),
        child: const WomanCategoryScreen(),
      );

  static Widget get addresses => BlocProvider(
        create: (context) => AddressCubit(AddressService())..getAddress(),
        child: const AddressPage(),
      );

  static Widget get changePassword => BlocProvider(
        create: (context) => ChangePasswordCubit(locator()),
        child: const ChangePassword(),
      );

  static Widget get saveAddress => BlocProvider(
        create: (context) => AddressCubit(AddressService()),
        child: const SaveAddress(),
      );

  static Widget get searchResult => SearchResultPage();
}
