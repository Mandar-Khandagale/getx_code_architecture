import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_code_architecture/base/base_widget.dart';
import 'package:getx_code_architecture/utils/size_config.dart';

abstract class GetBasePage<T> extends GetView<T?> {

  const GetBasePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return _getLayout();
  }

  /// Actual Screen which load scaffold and load UI
  Widget _getLayout() {
    return BaseWidget(
      builder: (BuildContext context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor:Colors.white,
          appBar: buildAppbar(),
          extendBodyBehindAppBar: extendBodyBehindAppBar(),
          body: _buildScaffoldBody(context),
        );
      },
    );
  }

  /// Building a appbar of screen
  PreferredSizeWidget? buildAppbar() {
    return null;
  }

  bool extendBodyBehindAppBar() {
    return false;
  }

  /// Body of the page.
  Widget _buildScaffoldBody(BuildContext context) {
    return Container(
      constraints:
      BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      child: buildView(context),
    );
  }

  /// All the children widget which extends this class should override this
  /// method to provide Ui of the page
  @mustCallSuper
  Widget buildView(BuildContext context);

}
