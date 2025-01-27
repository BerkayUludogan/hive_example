import 'dart:io';

import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

/// Product network manager
final class ProductNetworkManager extends NetworkManager<EmptyModel> {
  ProductNetworkManager.base()
      : super(
          options: BaseOptions(baseUrl: 'https://reqres.in//'),
        );
}

/// Handle error
/// [onErrorStatus] is error status code [HttpStatus]
void listenErrorState({required ValueChanged<int> onErrorStatus}) {
  Interceptors().add(
    InterceptorsWrapper(
      onError: (e, handler) {
        onErrorStatus(e.response?.statusCode ?? HttpStatus.notFound);
        return handler.next(e);
      },
    ),
  );
}
