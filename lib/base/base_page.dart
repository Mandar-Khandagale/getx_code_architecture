import 'package:flutter/material.dart';
import 'package:getx_code_architecture/base/base_widget.dart';
import 'package:getx_code_architecture/utils/size_config.dart';

/// Every Page/View should be inherited from this
abstract class BasePage extends StatefulWidget{
 const BasePage({Key? key}) : super(key: key) ;
}

abstract class BasePageState<T extends BasePage> extends State<T> {}

/// This class is three Baseclass for State class of the widget
abstract class BaseStatefulPage<B extends BasePage> extends BasePageState<B> {

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

abstract class BasePageViewWidget extends Widget {
  const BasePageViewWidget({Key? key}) : super(key: key) ;

  @protected
  Widget build(BuildContext context);

  @override
  ViewElement createElement() => ViewElement(this);
}

class ViewElement extends ComponentElement {
  ViewElement(BasePageViewWidget widget) : super(widget);

  @override
  BasePageViewWidget get widget => super.widget as BasePageViewWidget;


  @override
  Widget build() {
    return BaseWidget(
      builder: (context) {
        //SizeConfig().init(context);
        return widget.build(this);
      },
    );
  }
}

