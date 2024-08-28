import 'package:flutter_test/flutter_test.dart';
import 'package:hive_example/product/service/manager/product_network_manager.dart';
import 'package:hive_example/product/service/model/user_response.dart';
import 'package:hive_example/product/service/product_service_path.dart';
import 'package:vexana/vexana.dart';

void main() {
  final manager = ProductNetworkManager.base();
  setUp(() {});
  test('get users items from api', () async {
    final response = await manager.send<UserResponse, UserResponse>(
      ProductServicePath.user.value,
      parseModel: UserResponse(),
      method: RequestType.GET,
    );

    expect(response.data?.data, isNotNull);
    print(response.data);
  });
}
