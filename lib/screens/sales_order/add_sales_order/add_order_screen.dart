import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocation/model/add_order_model.dart';
import 'package:geolocation/widgets/full_screen_loader.dart';
import 'package:geolocation/widgets/textfielddecoration.dart';
import 'package:stacked/stacked.dart';

import '../../../model/search_order_model.dart';
import '../../../router.router.dart';
import '../../../widgets/drop_down.dart';
import 'add_order_viewmodel.dart';

class AddOrderScreen extends StatefulWidget {
  const AddOrderScreen({super.key});

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddOrderViewModel>.reactive(
      viewModelBuilder: () => AddOrderViewModel(),
      onViewModelReady: (model) => model.initialise(context),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Create Order'),
          leading: IconButton(onPressed: (){Navigator.popAndPushNamed(context, Routes.listOrderScreen);}, icon: Icon(Icons.arrow_back)),
        ),
        body: fullScreenLoader(loader: model.isBusy,context: context,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Autocomplete<String>(
            key: Key(model.orderdata.customer ?? "03"),
            initialValue: TextEditingValue(
              text: model.orderdata.customer ?? "",
            ),
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text.isEmpty) {
                return const Iterable<String>.empty();
              }
              return model.searchcutomer.where((area) =>
                  area.toLowerCase().contains(textEditingValue.text.toLowerCase()));
            },
            onSelected: model.setcustomer,
            fieldViewBuilder: (BuildContext context,
                TextEditingController textEditingController,
                FocusNode focusNode,
                VoidCallback onFieldSubmitted) {
              return TextFormField(
                controller: textEditingController,
                focusNode: focusNode,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
                decoration: InputDecoration(
                  labelText: 'Customer',
                  labelStyle: TextStyle(
                    color: Colors.blue, // Customize label text color
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Search for a customer',
                  hintStyle: TextStyle(
                    color: Colors.grey, // Customize hint text color
                  ),
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.blue, // Customize prefix icon color
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.blue), // Customize focused border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.grey), // Customize enabled border color
                  ),
                ),
              );
            },
      ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: CdropDown(
                        dropdownButton:
                        DropdownButtonFormField<String>(
                            isExpanded: true,
                            value: model.orderdata.orderType,
                            // Replace null with the selected value if needed
                            decoration: const InputDecoration(
                              labelText: 'Order Type',
                            ),
                            hint: const Text('Select Order type'),
                            items: model.ordetype.map((val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            }).toList(),
                            onChanged: (value) =>
                                model.setordertype(value),
                            validator: model.validateordertype),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextFormField(
                        controller: model.deliverydatecontroller,
                        onTap: () => model.selectdeliveryDate(context),
                        decoration: AppInputDecorations.textFieldDecoration(labelText: 'Delivery Date', hintText: 'YYYY-MM-dd', prefixIcon: Icons.calendar_today),
                        validator: model.validatedeliveryDob,
                        onChanged: model.ondeliveryDobChanged,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                CdropDown(
                  dropdownButton:
                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    value: model.orderdata.setWarehouse,
                    decoration: const InputDecoration(
                      labelText: 'Set Source Warehouse',
                    ),
                    hint: const Text('Select Source Warehouse'),
                    items: model.warehouse.map((val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Row(
                          children: [
                            Icon(Icons.location_city), // Add an icon or any other widget
                            SizedBox(width: 8), // Add spacing between the icon and text
                            Text(val),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) => model.setwarehouse(value),
                    validator: model.validatewarehouse,
                    menuMaxHeight: 500,
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  initialValue: 'items selected',
                  onTap: ()  {
             Navigator.pushNamed(
                      context,
                     Routes.itemScreen
,arguments: ItemScreenArguments(warehouse: model.orderdata.setWarehouse ?? "")            );

                  },
                  decoration: AppInputDecorations.textFieldDecoration(labelText: 'Items', hintText: 'select items', prefixIcon: Icons.perm_media_sharp),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void _showBottomSheet(AddOrderModel model) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return StatefulBuilder(
  //         builder: (BuildContext context, StateSetter setState) {
  //           return Column(
  //             crossAxisAlignment: CrossAxisAlignment.stretch,
  //             children: [
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                 children: [
  //                   AutoSizeText('Select customer'),
  //                   TextButton(
  //                     onPressed: () {
  //                       Navigator.pop(context);
  //                     },
  //                     child: Text('Done'),
  //                   ),
  //                 ],
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: TextFormField(
  //                   controller: model.searchcustomercontroller,
  //                   decoration: AppInputDecorations.textFieldDecoration(
  //                     labelText: 'Search',
  //                     hintText: 'Search',
  //                     prefixIcon: Icons.search,
  //                   ),
  //                   onChanged: (value) {
  //                     // Implement customer list filtering based on search query
  //                     setState(() {
  //                       model.searchcutomer;
  //                     });
  //                   },
  //                 ),
  //               ),
  //               Expanded(
  //                 child: ListView.builder(
  //                   itemCount: model.searchcutomer.length,
  //                   itemBuilder: (context, index) {
  //                     return CheckboxListTile(
  //                       value: model.searchcutomer.contains(
  //                           model.searchcutomer[index]),
  //                       title: Text(model.searchcutomer[index].customerName ?? ""),
  //                       onChanged: (bool? value) {
  //                         setState(() {
  //                           model.searchcutomer;
  //                         });
  //                       },
  //                     );
  //                   },
  //                 ),
  //               ),
  //             ],
  //           );
  //         },
  //       );
  //     },
  //   );
  // }
}
