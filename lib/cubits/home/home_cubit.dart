import 'dart:developer';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/presentation/app.dart';
import '../../data/contracts/product_contract.dart';
import '../../data/contracts/category_contract.dart';
import '../../data/models/remote/categories_model.dart';
import '../../data/models/remote/products_response.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._categoryContract,
    this._productContract,
  ) : super(HomeInitial()) {
    scrollController.addListener(() {
      if (isEndOfPage && currentPage != lastPage) {
        log('Fetch next page');
        getProducts();
      } else if (isEndOfPage && !isShowedAlert) {
        isShowedAlert = true;
        log('Alert message');
        showDialog(
          context: navKey.currentContext!,
          builder: (_) {
            return const AlertDialog(
              content: Text('All posts fetched successfully!'),
            );
          },
        );
      }
    });
  }

  final CategoryContract _categoryContract;
  final ProductContract _productContract;

  final List<Result> products = [];
  final List<Result> filteredProducts = [];

  bool isEmpty = false;

  void filterProducts(String v) {
    filteredProducts.clear();
    if (v.isEmpty || v == '') {
      isEmpty = false;
      filteredProducts.addAll(products);
      productsSubject.add(productResponse);
      return;
    }

    isEmpty = true;

    for (final product in products) {
      if ((product.name?.toLowerCase().startsWith(v.toLowerCase()) ?? false)) {
        filteredProducts.add(product);
      }
    }

    productsSubject.add(productResponse);
  }

  int page = 1;
  bool isShowedAlert = false;

  final categoriesSubject = BehaviorSubject<List<CategoriesResponse>>();
  final productsSubject = BehaviorSubject<ProductResponse?>();
  final selectedIndexSubject = BehaviorSubject<int>.seeded(0);

  final scrollController = ScrollController();

  bool get isEndOfPage =>
      scrollController.position.pixels ==
      scrollController.position.maxScrollExtent;

  int? get currentPage => productsSubject.value?.currentPage;
  int? get lastPage => productsSubject.value?.lastPage;

  void getCategories() async {
    try {
      final categories = await _categoryContract.getCategories();
      categoriesSubject.add(categories);
    } catch (e) {
      categoriesSubject.addError('Error occured');
    }
  }

  ProductResponse? productResponse;

  void getProducts() async {
    try {
      productResponse = await _productContract.getProducts(page: page);
      products.addAll(productResponse?.results ?? []);
      page++;
      productsSubject.add(productResponse);
    } catch (e, s) {
      log('Error: $e');
      log('Stack Trace: $s');
      productsSubject.addError('Error occured');
    }
  }

  void getProductsByCategoryId(int categoryId) async {
    try {
      productsSubject.add(null);
      final productResponse =
          await _productContract.getProductsByCategoryId(categoryId);
      // products.addAll(productResponse.results ?? []);
      productsSubject.add(productResponse);
    } catch (e, s) {
      log('Error: $e');
      log('Stack Trace: $s');
      productsSubject.addError('Error occured');
    }
  }

  void listToGrid() {
    emit(HomeGridState(buttonView: true));
  }

  void gridToList() {
    emit(HomeGridState(buttonView: false));
  }

  @override
  Future<void> close() {
    categoriesSubject.close();
    productsSubject.close();
    selectedIndexSubject.close();
    scrollController.dispose();
    return super.close();
  }
}
