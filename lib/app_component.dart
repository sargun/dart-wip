import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';
import 'package:ringoftrust_web/dashboard_component.dart';
import 'package:ringoftrust_web/hero_detail_component.dart';
import 'package:ringoftrust_web/hero_service.dart';
import 'package:ringoftrust_web/heroes_component.dart';
import 'package:angular2/router.dart';

@RouteConfig(const [
  const Route(path: '#/dashboard', name: 'Dashboard', component: DashboardComponent, useAsDefault: true),
  const Route(path: '#/heroes', name: 'Heroes', component: HeroesComponent),
  const Route(path: '#/detail/:id', name: 'HeroDetail', component: HeroDetailComponent)
])
@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES],
  providers: const [HeroService],
  styleUrls: const ['app_component.css']

)
class AppComponent {
  final String title = 'Tour of Heroes';
  final HeroService _heroService;
  AppComponent(this._heroService);

}