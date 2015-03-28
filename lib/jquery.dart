// jQuery library declaration file.

import "dart:html";

// Approach 1. Just declaration of interfaces. Transformer will transform all
// calls of this methods to JS proxies.
var $ = jQuery;

class jQuery implements Function {
  var _jsObject;

  jQuery(this._jsObject);

  // jQuery has 6 interfaces for function call. Dart has no overloading so we
  // set maximum elements and all as optional because one interface accepts no
  // arguments.
  jQuery call([param1, param2]) {}

  jQuery each(Function each(int index, HtmlElement element)) {}

  // Not working :(. Need to understand the reason.
  ready(Function onReady) {}
}

// Approach 2 (maybe unrealizable). Transformer fills contents of methods with
// proxies. But we can't understand what to return from methods.
/*
var $ = jQuery;

class jQuery implements Function {
  var _jsObject;

  jQuery(this._jsObject);

  jQuery call(String selector) {
    _jsObject = context['window'].callMethod('jQuery', [selector]);

    return this;
  }

  jQuery closest(String selector) {
    var result = _jsObject.callMethod('closest',[selector]);
    if(_jsObject != null && !identical(result, _jsObject))
      return new jQuery(result);

    return this;
  }
}*/
