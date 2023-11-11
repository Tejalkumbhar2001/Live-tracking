import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import '../../../model/item_model.dart';
import '../../../services/add_order_services.dart';

class ItemListModel extends BaseViewModel{
List<ItemModel> selecteditems=[];
List<ItemModel> isSelecteditems =[];

  initialise(BuildContext context,String warehouse ) async {
    setBusy(true);
selecteditems = await AddOrderServices().fetchitems(warehouse);
    setBusy(false);
  }

bool isSelected(ItemModel item) {
  return isSelecteditems.contains(item);
}

void toggleSelection(ItemModel item) {
  if (isSelected(item)) {
    isSelecteditems.remove(item);
  } else {
    isSelecteditems.add(item);
  }

  notifyListeners();
}
}