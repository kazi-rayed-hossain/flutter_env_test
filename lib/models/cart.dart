import 'package:dhur_hoy_na_ken/core/store.dart';
import 'package:dhur_hoy_na_ken/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // catalog fild
  late CatalogModel _catalog;

  // collection of Ids store IDs of each item
  final List<int> _itemIds = [];

  // get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    // ignore: unnecessary_null_comparison
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

// get total price
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

// Add item
  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }

  // remove item
  // void remove(Item item) {
  //   _itemIds.remove(item.id);
  // }
}
// add mutation
class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.add(item.id);
  }
}
// remove mutation
class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.remove(item.id);
  }
}