import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_event.dart';
import 'cart_state.dart';
import '../../models/cart_item.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<AddToCart>(_onAddToCart);
    on<RemoveFromCart>(_onRemoveFromCart);
    on<UpdateQuantity>(_onUpdateQuantity);
    on<ClearCart>(_onClearCart);
  }

  void _onAddToCart(AddToCart event, Emitter<CartState> emit) {
    if (state is CartLoaded) {
      final currentState = state as CartLoaded;
      final existingItemIndex = currentState.items
          .indexWhere((item) => item.product == event.product);

      if (existingItemIndex >= 0) {
        final updatedItems = List<CartItem>.from(currentState.items);
        updatedItems[existingItemIndex] = updatedItems[existingItemIndex]
            .copyWith(quantity: updatedItems[existingItemIndex].quantity + 1);

        emit(CartLoaded(
          items: updatedItems,
          total: _calculateTotal(updatedItems),
        ));
      } else {
        final updatedItems = [
          ...currentState.items,
          CartItem(product: event.product)
        ];
        emit(CartLoaded(
          items: updatedItems,
          total: _calculateTotal(updatedItems),
        ));
      }
    } else {
      emit(CartLoaded(
        items: [CartItem(product: event.product)],
        total: event.product.price,
      ));
    }
  }

  void _onRemoveFromCart(RemoveFromCart event, Emitter<CartState> emit) {
    if (state is CartLoaded) {
      final currentState = state as CartLoaded;
      final updatedItems = currentState.items
          .where((item) => item.product != event.product)
          .toList();

      emit(CartLoaded(
        items: updatedItems,
        total: _calculateTotal(updatedItems),
      ));
    }
  }

  void _onUpdateQuantity(UpdateQuantity event, Emitter<CartState> emit) {
    if (state is CartLoaded) {
      final currentState = state as CartLoaded;
      final updatedItems = currentState.items.map((item) {
        if (item.product == event.product) {
          return item.copyWith(quantity: event.quantity);
        }
        return item;
      }).toList();

      emit(CartLoaded(
        items: updatedItems,
        total: _calculateTotal(updatedItems),
      ));
    }
  }

  void _onClearCart(ClearCart event, Emitter<CartState> emit) {
    emit(const CartLoaded(items: [], total: 0.0));
  }

  double _calculateTotal(List<CartItem> items) {
    return items.fold(0.0, (sum, item) => sum + item.totalPrice);
  }
}
