import 'package:dw3_pizza_delivery_api/application/modules/users/users_router.dart';
import 'package:shelf_router/src/router.dart';

import './i_router_configure.dart';

class RouterConfigure {
  final Router _router;
  final List<IRouterConfigure> routers = [
    UsersRouter(),
  ];

  RouterConfigure(this._router);

  @override
  void configure() => routers.forEach((r) => r.configure(_router));
}
