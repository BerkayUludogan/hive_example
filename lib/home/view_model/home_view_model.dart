import 'package:hive_example/home/state/home_state.dart';
import 'package:hive_example/product/base/base_cubit.dart';
import 'package:hive_example/product/cache/hive/index.dart';
import 'package:hive_example/product/service/manager/product_network_manager.dart';
import 'package:hive_example/product/service/model/index.dart';
import 'package:hive_example/product/service/product_service_path.dart';
import 'package:hive_example/product/state/container/index.dart';
import 'package:vexana/vexana.dart';

class HomeViewModel extends BaseCubit<HomeState> {
  HomeViewModel({
    required HiveCacheOperation<User> userCacheOperations,
  })  : _userCacheOperation = userCacheOperations,
        super(const HomeState(loading: false));

  late final HiveCacheOperation<User> _userCacheOperation;

  Future<List<User>?> fetchUsers() async {
    List<User>? users;

    emit(state.copyWith(loading: true));
    try {
      final manager = ProductNetworkManager.base();
      final response = await manager.send<UserResponse, UserResponse>(
        ProductServicePath.user.value,
        parseModel: UserResponse(),
        method: RequestType.GET,
      );
      users = response.data?.data;

      if (users!.isNotEmpty) {
        saveUsersToCache(users);
        emit(state.copyWith(users: users));
      }
    } catch (_) {
      emit(state.copyWith(users: getUsersFromCache()));
    }
    return null;
  }

  void saveUsersToCache(List<User> users) {
    if (users.isEmpty) return;
    _userCacheOperation.addAll(users);
  }

  List<User> getUsersFromCache() {
    return ProductStateItems.productCacheManager.userCacheOperation.getAll();
  }
}
