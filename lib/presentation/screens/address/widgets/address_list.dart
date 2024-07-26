import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/cubits/address/address_cubit.dart';
import 'package:shopper_app/data/models/remote/address_response.dart';

class AddressList extends StatelessWidget {
  const AddressList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressCubit, AddressState>(
      builder: (context, state) {
        if (state is AddressLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AddressSuccess) {
          List<AddressResponse>? addressList = state.addressList;

          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: addressList?.length,
            itemBuilder: (context, index) {
              final address = addressList?[index];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 140,
                  height: 250,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.unselectedCategoryButton),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppAssets.addressListHomeIcon),
                          const SizedBox(width: 8.0),
                          const Text(
                            AppStrings.addAddressCardTitle1,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Center(
                        child: Text(
                          address!.addressName,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Center(
                        child: Text(
                          address.phoneNumber,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: Text(
                            address.state,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
        return const Center(child: Text('Data not found'));
      },
    );
  }
}
