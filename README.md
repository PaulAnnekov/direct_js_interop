# Direct JS Interoperability
Concept of interoperability between Dart and JS. The main idea is that you write
code on Dart that is exact as JS code. So instead of this:

```
context.callMethod(r'$',['div']).callMethod('each',[(index,element) {
  element.style.color='#ccc';
  print(index);
}]);
```

you write this (IDE understands you):

```
$('div').each((index, element) {
  element.style.color='#ccc';
  print(index);
});
```

and transformer will do the rest.
