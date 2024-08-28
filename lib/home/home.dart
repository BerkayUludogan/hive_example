import 'package:flutter/material.dart';
import 'package:hive_example/product/cache/hive/hive_cache_operation.dart';
import 'package:hive_example/product/service/manager/product_network_manager.dart';
import 'package:hive_example/product/service/model/user.dart';
import 'package:hive_example/product/service/model/user_response.dart';
import 'package:hive_example/product/service/product_service_path.dart';
import 'package:hive_example/product/state/container/product_state_items.dart';
import 'package:vexana/vexana.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

late final HiveCacheOperation<User> _userCacheOperation;
late final Future<List<User>?> _futureUsers;
late final List<User> cacheUser;

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    _userCacheOperation =
        ProductStateItems.productCacheManager.userCacheOperation;
    _futureUsers = fetchUsers();
    cacheUser = getUsersFromCache();
    print(cacheUser);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reqres Data'),
        centerTitle: true,
      ),
      body: _futureBuilder(),
    );
  }

  FutureBuilder<List<User>?> _futureBuilder() {
    return FutureBuilder(
      future: _futureUsers,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          if (snapshot.data!.isNotEmpty) {
            final userResponse = snapshot.data!;
            saveUsersToCache(userResponse);
            getUsersFromCache();
            return ListView.builder(
              itemCount: cacheUser.length,
              itemBuilder: (context, index) {
                final user = cacheUser[index];

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar!),
                  ),
                  title: Text(user.first_name!),
                  subtitle: Text(user.first_name!),
                  onTap: () {},
                );
              },
            );
          }
        } else {
          return ListView.builder(
            itemCount: cacheUser.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(cacheUser[index].avatar!),
                ),
                title: Text(cacheUser[index].first_name!),
              );
            },
          );
        }
        return const Center(
          child: Text('No data.'),
        );
      },
    );
  }

  void saveUsersToCache(List<User> users) {
    if (users.isEmpty) return;
    _userCacheOperation.addAll(users);
  }

  List<User> getUsersFromCache() {
    return ProductStateItems.productCacheManager.userCacheOperation.getAll();
  }

  Future<List<User>?> fetchUsers() async {
    final manager = ProductNetworkManager.base();
    final response = await manager.send<UserResponse, UserResponse>(
      ProductServicePath.user.value,
      parseModel: UserResponse(),
      method: RequestType.GET,
    );
    return response.data?.data;
  }
}
