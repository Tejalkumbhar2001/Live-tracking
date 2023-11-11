import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:geolocation/model/item_model.dart';
import 'package:geolocation/widgets/full_screen_loader.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';

import '../../../constants.dart';
import 'add_item_model.dart';

class ItemScreen extends StatelessWidget {
  final String warehouse;
  const ItemScreen({super.key, required this.warehouse});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ItemListModel>.reactive(
      viewModelBuilder: () => ItemListModel(),
      onViewModelReady: (model) => model.initialise(context, warehouse),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Select Items'),
          actions: [
            IconButton(
              icon: Icon(Icons.done),
              onPressed: () {
                Navigator.pop(context, model.selecteditems);
              },
            ),
          ],
        ),
        body: fullScreenLoader(
          loader: model.isBusy,
          context: context,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: model.selecteditems.length,
              itemBuilder: (context, index) {
                final selectedItem = model.selecteditems[index];

                return Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: buildImage(selectedItem.image),
                      title: buildItemDetails(selectedItem),
                      trailing: Checkbox(
                        value: model.isSelected(selectedItem),
                        onChanged: (value) {
                          model.toggleSelection(selectedItem);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String? imageUrl) {
    return Container(
      height: 100,
      width: 100,
      child: Image.network(
        '$baseurl$imageUrl',
        fit: BoxFit.fitHeight,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            // Image is done loading
            Logger().i(baseurl + (imageUrl ?? ""));
            return child;
          } else {
            // Image is still loading
            return const Center(child: CircularProgressIndicator(color: Colors.blueAccent));
          }
        },
        errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
          // Handle the error by displaying a broken image icon
          Logger().i(baseurl + (imageUrl ?? ""));
          return const Center(child: Icon(Icons.broken_image, size: 80.0));
        },
      ),
    );
  }

  Widget buildItemDetails(ItemModel selectedItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AutoSizeText('Item Code ${selectedItem.itemCode}'),
            AutoSizeText('${selectedItem.itemName}'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildItemColumn('Quantity'),
            buildItemColumn('Amount', additionalText: selectedItem.rate.toString()),
          ],
        ),
      ],
    );
  }

  Widget buildItemColumn(String label, {String? additionalText}) {
    return Column(
      children: [
        AutoSizeText(label),
        if (additionalText != null) AutoSizeText(additionalText),
      ],
    );
  }
}
