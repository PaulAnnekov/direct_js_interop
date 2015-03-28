# Direct JS Interoperability
Concept of interoperability between Dart and JS. The main idea is that you write
code on Dart that is exact as JS code. So instead of this:

```dart
context.callMethod(r'$',['div']).callMethod('each',[(index,element) {
  element.style.color='#ccc';
  print(index);
}]);
```

you write this (and IDE understands you):

```dart
$('div').each((index, element) {
  element.style.color='#ccc';
  print(index);
});
```

and transformer will do the rest.

To help IDE and transformer understand the code we use declaration files as in
TypeScript (http://www.typescriptlang.org/Handbook#writing-dts-files). We can
even try to automatically convert them (https://github.com/borisyankov/DefinitelyTyped)
to Dart.
