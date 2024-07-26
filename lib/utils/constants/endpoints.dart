class Endpoints {
  Endpoints._();

  static const defaultImage =
      'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg';

  static const baseUrl = 'https://rmusayevr.pythonanywhere.com';
  static const _accounts = '$baseUrl/accounts';
  static const login = '$_accounts/login/';
  static const refreshToken = '$_accounts/token/refresh/';
  static const update = '$_accounts/update/';
  static const categories = '$baseUrl/base/category/list/';
  static const products = '$baseUrl/store/products/?page=';
  static const productsByCategoryId = '$baseUrl/store/products/?category=';
  static const productDetail = '$baseUrl/store/detail/';
  static const getAddress = '$baseUrl/address/list/';
  static const paymentDetailsList = '$baseUrl/payment/list/';
  static const createPayment = '$baseUrl/payment/create/';
  static const review = "$baseUrl/review/create/";
  static const getFavorite = "$baseUrl/favorite/";
  static const postFavorite = "$baseUrl/favorite/create/";
  static const createReview = "$baseUrl/review/create/";
  static const reviewAll = "$baseUrl/review/all/";
  static const changePassword = '$_accounts/password/change/';
  static const createAddress = "$baseUrl/address/create/";
}
