import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:fwc_album_app/app/pages/auth/register/presenter/register_presenter_impl.dart';
import 'package:fwc_album_app/app/pages/auth/register/register_page.dart';

class RegisterRoute extends FlutterGetItPageRoute {
  const RegisterRoute({super.key});

  @override
  // TODO: implement bindings
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<RegisterPresenter>(
          (i) => RegisterPresenterImpl(authRepository: i()),
        ),
      ];

  @override
  // TODO: implement page
  WidgetBuilder get page => (context) => RegisterPage(presenter: context.get());
}
