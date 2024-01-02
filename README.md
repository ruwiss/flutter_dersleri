## Null Safety Konusunu öğrendik

Bir değişkenin önüne ? eklersek null alabildiğini belirtmiş oluruz.

Değişkeni çağırıken bize uyarı verecektir. ? eklersek değerini bilmediğimizi söyleriz.
Eğer ! eklersek değerinin olduğuna %100 eminiz demektir. Bunu Dart'a belirtmiş oluyoruz.

Çağırdığımız değişken null tipinde geldiğinde farklı bir değer göstermek istiyorsak
?? kullanabiliriz. Örneğin degisken ?? 'varsayılan değer' gibi

Değişkenin değeri null ise onun değerini varsayılan bir değere eşitleyebiliriz.

String? degisken;
degisken ?? 'Varsayılan Değer'

şeklinde.


## Widget içerisinde if else yapısını kullanmayı öğrendik

Widgetlar içerisinde bir değişkeni kontrol edip ona göre görünümümüzü ayarlamak istersek
? ve : işaretlerinden faydalanabiliriz.
? if anlamına gelir : ise else anlamına gelir.

veri == null ? Text('veri yok') : Text('veri var')

Üstteki örnekte verimiz yoksa veri yok yazacak eğer var ise veri var yazacak.