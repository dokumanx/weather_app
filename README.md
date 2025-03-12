# Weather App

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]  
[![License: MIT][license_badge]][license_link]

---

## Başlangıç 🚀

Bu uygulama 3 farklı flavor içermektedir:

- Development
- Staging
- Production

Ancak bu projede **Development** ve **Production** olmak üzere yalnızca 2 flavor kullanılmaktadır.

### Flutter SDK

Bu proje **Flutter SDK 3.27.1** sürümüyle geliştirilmiştir. Lütfen bu sürümü kullandığınızdan emin
olun.

## Projeyi Çalıştırmadan Önce 🛠️

Projeyi çalıştırmadan önce, dependency'lerin indirildiğinden emin olmanız gerekmektedir. Bunun için
aşağıdaki komutu çalıştırın:

```sh
$ flutter pub get
$ cd ios && rm -rf Podfile.lock Pods/ && pod install --repo-update && cd ../
```

### Development Flavor

Development flavor’ında
çalıştırdığınızda, [Device Preview](https://pub.dev/packages/device_preview_plus) paketi otomatik
olarak devreye girer. Bu özellik sayesinde uygulamanın farklı cihaz türlerinde (telefon, tablet vb.)
nasıl göründüğünü ve nasıl reaksiyon verdiğini kolayca gözlemleyebilirsiniz. Bu, özellikle
geliştirme ve test sürecinde oldukça faydalı bir araçtır.

### Production Flavor

Production flavor, uygulamanın son kullanıcıya sunulan versiyonudur. Bu versiyonda Device Preview
devre dışı bırakılmıştır ve yalnızca production ortamına uygun özellikler aktif olarak çalışır.

---

## Uygulamayı Çalıştırma 🚀

Aşağıdaki komutlarla istediğiniz flavor’da uygulamayı çalıştırabilirsiniz:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html

[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg

[license_link]: https://opensource.org/licenses/MIT

[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg

[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis

[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
