// Copyright (c) 2017, sdhillon. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/platform/browser.dart';

import 'package:angular2/platform/common.dart';
import 'package:angular2/router.dart';
import 'package:ringoftrust_web/app_component.dart';
import 'package:angular2/angular2.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import 'package:ringoftrust_web/in_memory_data_service.dart';


main() {
  bootstrap(AppComponent,
      [
        ROUTER_PROVIDERS,
        provide(LocationStrategy, useClass: HashLocationStrategy),
        provide(Client, useClass: InMemoryDataService)
      ]
  // Using a real back end? Import browser_client.dart and change the above to
  // [provide(Client, useFactory: () => new BrowserClient(), deps: [])]
  );
}
