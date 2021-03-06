import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:ringoftrust_web/hero.dart';
import 'package:ringoftrust_web/hero_service.dart';
import 'package:ringoftrust_web/hero_search_component.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  directives: const [HeroSearchComponent, ROUTER_DIRECTIVES],
  styleUrls: const ['dashboard_component.css'],
)
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroService _heroService;

  DashboardComponent(this._heroService);

  Future<Null> ngOnInit() async {
    heroes = (await _heroService.getHeroes()).skip(1).take(4).toList();
  }
}
