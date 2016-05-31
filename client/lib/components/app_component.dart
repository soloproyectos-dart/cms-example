import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:list/components/edit_item_component.dart';
import 'package:list/components/list_component.dart';
import 'package:list/services/config_service.dart';
import 'package:list/services/edit_service.dart';
import 'package:list/services/list_service.dart';

@Component(
    selector: 'div.app-component',
    templateUrl: 'app_component.html',
    directives: const [
      ROUTER_DIRECTIVES
    ],
    providers: const [
      ConfigService,
      ListService,
      EditService,
      ROUTER_PROVIDERS
    ])
@RouteConfig(const [
  const Route(
      path: '/list',
      name: 'List',
      component: ListComponent,
      useAsDefault: true),
  const Route(
      path: '/edit-item/:id', name: 'EditItem', component: EditItemComponent)
])
class AppComponent {
  String title = 'List Manager';
}
