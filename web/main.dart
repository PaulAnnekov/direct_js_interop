// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:js';

// Should be removed after transformation.
import 'package:direct_js_interop/jquery.dart';

void main() {
  // Original.
  /*$('div').each(function(index, element) {
    $(element).css('color','#ccc');
    console.log(index);
  });*/

  // Dart code.
  $('div').each((index, element) {
    element.style.color='#ccc';
    print(index);
  });

  // After transformer.
  /*context.callMethod(r'$',['div']).callMethod('each',[(index,element) {
    element.style.color='#ccc';
    print(index);
  }]);*/
}