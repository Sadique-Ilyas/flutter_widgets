import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/app_bar.dart';
import 'package:flutter_widgets/Widgets/baseline.dart';
import 'package:flutter_widgets/widgets/bottom_sheet_modal.dart';
import 'package:flutter_widgets/widgets/bottom_sheet_persistent.dart';
import 'package:flutter_widgets/widgets/button_bar.dart';
import 'package:flutter_widgets/widgets/card.dart';
import 'package:flutter_widgets/widgets/column_row.dart';
import 'package:flutter_widgets/widgets/constrained_box.dart';
import 'package:flutter_widgets/widgets/container.dart';
import 'package:flutter_widgets/widgets/divider.dart';
import 'package:flutter_widgets/widgets/expanded.dart';
import 'package:flutter_widgets/widgets/expansion_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: ListSearch());
              })
        ],
      ),
      body: myListView(),
    );
  }
}

List<String> getListElements() {
  var items = [
    'App Bar',
    'Baseline',
    'Bottom Sheet (Modal)',
    'Bottom Sheet (Persistent)',
    'Button Bar',
    'Card',
    'Column and Row',
    'Constrained Box',
    'Container',
    'Custom Multi Child Layout [Incomplete]',
    'Divider',
    'Expanded',
    'Expansion Panel',
    'Fitted Box',
    'Flow [Incomplete]',
    'Fractionally Sized Box',
    'Grid View',
    'Indexed Stack',
    'Stack',
    'Intrinsic Height',
    'Intrinsic Width [Incomplete]',
    'Layout Builder',
    'Limited Box',
    'List Body',
    'List Tile',
    'Navigation Drawer',
    'Page View',
    'Wrap',
    'Animated Container',
    'Opacity',
    'Future Builder [Incomplete]',
    'Fade Transition [Incomplete]',
    'Sliver App Bar',
    'FadeIn Image',
    'Stream Builder [Incomplete]',
    'Inherited Model [Incomplete]',
    'ClipRRect',
    'Hero',
    'Custom Paint [Incomplete]',
    'ToolTip',
    'Absorb Pointer',
    'Transform',
    'BackDropFilter [Incomplete]',
    'Align',
    'Positioned',
    'Animated Builder',
    'Dismissible',
    'Sized Box',
    'Value Listenable Builder',
    'Checkbox',
    'Circular Progress Indicator',
    'Date Time Picker',
    'Data Table',
    'Drop Down Button',
    'Flat Button',
    'Floating Action Button',
    'Form',
    'Icon Button',
    'Image',
    'Linear Progress Indicator',
    'Popup Menu Button',
    'Radio Button',
    'Raised Button',
    'Refresh Indicator',
    'Rich Text',
    'Slider',
    'Switch',
    'Text Field',
    'Draggable',
    'Animated List',
    'Flexible',
    'Media Query [Incomplete]',
    'Spacer',
    'Inherited Widget [Incomplete]',
    'Animated Icon',
    'Aspect Ratio',
    'PlaceHolder',
    'Reorderable ListView',
    'Animated Switcher',
    'Animated Positioned',
    'Animated Padding',
    'Semantics [Incomplete]',
    'Animated Opacity',
    'Selectable Text',
    'Alert Dialog',
    'Animated Cross Fade',
    'Draggable Scrollable Sheet',
    'Color Filtered',
    'Toggle Buttons',
    'Cupertino Action Sheet',
    'Tween Animation Builder [Incomplete]',
    'Tab Bar',
    'SnackBar',
    'List Wheel Scroll View',
    'Shader Mask',
    'Notification Listener [Incomplete]',
    'Clip Path',
    'Ignore Pointer',
    'Cupertino Activity Indicator',
    'Clip Oval',
    'Animated Widget [Incomplete]',
    'Checkbox List Tile',
    'About Dialog',
    'Interactive Viewer',
    'Switch List Tile',
  ];
  return items;
}

var recentWidgets = [];

Widget myListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listItems[index]),
        onTap: () {
          nextRoute(context, listItems[index]);
          if (!recentWidgets.contains(listItems[index])) {
            recentWidgets.add(listItems[index]);
          }
          if (recentWidgets.length > 5) {
            recentWidgets.removeAt(0);
          }
        },
      );
    },
    itemCount: getListElements().length,
  );
  return listView;
}

class ListSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for app Bar
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading Icon
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show results once selected
    return const Center(child: Text('Not Found'));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show Suggestions
    final suggestionsList = query.isEmpty
        ? recentWidgets
        : getListElements()
            .where((element) => element
                .toLowerCase()
                .trim()
                .startsWith(query.toLowerCase().trim()))
            .toList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: RichText(
            text: TextSpan(
                text: suggestionsList[index].substring(0, query.length),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: suggestionsList[index].substring(query.length),
                      style: const TextStyle(color: Colors.grey))
                ]),
          ),
          onTap: () {
            Navigator.of(context).pop();
            nextRoute(context, suggestionsList[index]);
          },
        );
      },
      itemCount: suggestionsList.length,
    );
  }
}

void nextRoute(BuildContext context, String widget) {
  switch (widget) {
    case 'App Bar':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AppBarWidget()));
      break;
    case 'Baseline':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const BaselineWidget()));
      break;
    case 'Bottom Sheet (Modal)':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const BottomSheetModalWidget()));
      break;
    case 'Bottom Sheet (Persistent)':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const BottomSheetPersistentWidget()));
      break;
    case 'Button Bar':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ButtonBarWidget()));
      break;
    case 'Card':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CardWidget()));
      break;
    case 'Column and Row':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ColumnRowWidget()));
      break;
    case 'Constrained Box':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ConstrainedBoxWidget()));
      break;
    case 'Container':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ContainerWidget()));
      break;
    // case 'Custom Multi Child Layout [Incomplete]':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => CustomMultiChildLayoutWidget()));
    //   break;
    case 'Divider':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DividerWidget()));
      break;
    case 'Expanded':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ExpandedWidget()));
      break;
    case 'Expansion Panel':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ExpansionPanelWidget()));
      break;
    // case 'Fitted Box':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => FittedBoxWidget()));
    //   break;
    // case 'Flow [Incomplete]':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => FlowWidget()));
    //   break;
    // case 'Fractionally Sized Box':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => FractionallySizedBoxWidget()));
    //   break;
    // case 'Grid View':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => GridViewWidget()));
    //   break;
    // case 'Indexed Stack':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => IndexedStackWidget()));
    //   break;
    // case 'Stack':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => StackWidget()));
    //   break;
    // case 'Intrinsic Height':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => IntrinsicHeightWidget()));
    //   break;
    // case 'Intrinsic Width [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => IntrinsicWidthWidget()));
    //   break;
    // case 'Layout Builder':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => LayoutBuilderWidget()));
    //   break;
    // case 'Limited Box':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => LimitedBoxWidget()));
    //   break;
    // case 'List Body':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => ListBodyWidget()));
    //   break;
    // case 'List Tile':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => ListTileWidget()));
    //   break;
    // case 'Navigation Drawer':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => NavigationDrawerWidget()));
    //   break;
    // case 'Page View':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => PageViewWidget()));
    //   break;
    // case 'Wrap':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => WrapWidget()));
    //   break;
    // case 'Animated Container':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => AnimatedContainerWidget()));
    //   break;
    // case 'Opacity':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => OpacityWidget()));
    //   break;
    // case 'Future Builder [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => FutureBuilderWidget()));
    //   break;
    // case 'Fade Transition [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => FadeTransitionWidget()));
    //   break;
    // case 'Sliver App Bar':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => SliverAppBarWidget()));
    //   break;
    // case 'FadeIn Image':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => FadeInImageWidget()));
    //   break;
    // case 'Stream Builder [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => StreamBuilderWidget()));
    //   break;
    // case 'Inherited Model [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => InheritedModelWidget()));
    //   break;
    // case 'ClipRRect':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => ClipRRectWidget()));
    //   break;
    // case 'Hero':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => HeroHomePage()));
    //   break;
    // case 'Custom Paint [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => CustomPaintWidget()));
    //   break;
    // case 'ToolTip':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => TooltipWidget()));
    //   break;
    // case 'Absorb Pointer':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => AbsorbPointerWidget()));
    //   break;
    // case 'Transform':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => TransformWidget()));
    //   break;
    // case 'BackDropFilter [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => BackDropFilterWidget()));
    //   break;
    // case 'Align':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => AlignWidget()));
    //   break;
    // case 'Positioned':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => PositionedWidget()));
    //   break;
    // case 'Animated Builder':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => AnimatedBuilderWidget()));
    //   break;
    // case 'Dismissible':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => DismissibleWidget()));
    //   break;
    // case 'Sized Box':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => SizedBoxWidget()));
    //   break;
    // case 'Value Listenable Builder':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => ValueListenableBuilderWidget()));
    //   break;
    // case 'Checkbox':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myCheckBox()));
    //   break;
    // case 'Circular Progress Indicator':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => myCircularProgressIndicator()));
    //   break;
    // case 'Date Time Picker':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myDateTimePicker()));
    //   break;
    // case 'Data Table':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myDataTable()));
    //   break;
    // case 'Drop Down Button':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myDropDownButton()));
    //   break;
    // case 'Flat Button':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myFlatButton()));
    //   break;
    // case 'Floating Action Button':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => myFloatingActionButton()));
    //   break;
    // case 'Form':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myForm()));
    //   break;
    // case 'Icon Button':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myIconButton()));
    //   break;
    // case 'Image':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myImage()));
    //   break;
    // case 'Linear Progress Indicator':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => myLinearProgressIndicator()));
    //   break;
    // case 'Popup Menu Button':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => myPopupMenuButton()));
    //   break;
    // case 'Radio Button':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myRadioButton()));
    //   break;
    // case 'Raised Button':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myRaisedButton()));
    //   break;
    // case 'Refresh Indicator':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => myRefreshIndicator()));
    //   break;
    // case 'Rich Text':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myRichText()));
    //   break;
    // case 'Slider':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => mySlider()));
    //   break;
    // case 'Switch':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => mySwitch()));
    //   break;
    // case 'Text Field':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => myTextField()));
    //   break;
    // case 'Draggable':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyDraggableWidget()));
    //   break;
    // case 'Animated List':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyAnimatedListWidget()));
    //   break;
    // case 'Flexible':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MyFlexibleWidget()));
    //   break;
    // case 'Media Query [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyMediaQueryWidget()));
    //   break;
    // case 'Spacer':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MySpacerWidget()));
    //   break;
    // case 'Inherited Widget [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyInheritedWidget()));
    //   break;
    // case 'Animated Icon':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MyAnimatedIcon()));
    //   break;
    // case 'Aspect Ratio':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyAspectRatioWidget()));
    //   break;
    // case 'PlaceHolder':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyPlaceholderWidget()));
    //   break;
    // case 'Reorderable ListView':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MyReorderableListViewWidget()));
    //   break;
    // case 'Animated Switcher':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyAnimatedSwitcherWidget()));
    //   break;
    // case 'Animated Positioned':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MyAnimatedPositionedWidget()));
    //   break;
    // case 'Animated Padding':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyAnimatedPaddingWidget()));
    //   break;
    // case 'Semantics [Incomplete]':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MySemanticsWidget()));
    //   break;
    // case 'Animated Opacity':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyAnimatedOpacityWidget()));
    //   break;
    // case 'Selectable Text':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MySelectableTextWidget()));
    //   break;
    // case 'Alert Dialog':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyAlertDialogWidget()));
    //   break;
    // case 'Animated Cross Fade':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyAnimatedCrossFadeWidget()));
    //   break;
    // case 'Draggable Scrollable Sheet':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MyDraggableScrollableSheetWidget()));
    //   break;
    // case 'Color Filtered':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyColorFilteredWidget()));
    //   break;
    // case 'Toggle Buttons':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyToggleButtonsWidget()));
    //   break;
    // case 'Cupertino Action Sheet':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MyCupertinoActionSheetWidget()));
    //   break;
    // case 'Tween Animation Builder [Incomplete]':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MyTweenAnimationBuilderWidget()));
    //   break;
    // case 'Tab Bar':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MyTabBarWidget()));
    //   break;
    // case 'SnackBar':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MySnackBarWidget()));
    //   break;
    // case 'List Wheel Scroll View':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MyListWheelScrollViewWidget()));
    //   break;
    // case 'Shader Mask':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyShaderMaskWidget()));
    //   break;
    // case 'Notification Listener [Incomplete]':
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MyNotificationListenerWidget()));
    //   break;
    // case 'Clip Path':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MyClipPathWidget()));
    //   break;
    // case 'Ignore Pointer':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyIgnorePointerWidget()));
    //   break;
    // case 'Cupertino Activity Indicator':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyCupertinoActivityWidget()));
    //   break;
    // case 'Clip Oval':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MyClipOvalWidget()));
    //   break;
    // case 'Animated Widget [Incomplete]':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MyAnimatedWidget()));
    //   break;
    // case 'Checkbox List Tile':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyCheckBoxListTileWidget()));
    //   break;
    // case 'About Dialog':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyAboutDialogWidget()));
    //   break;
    // case 'Interactive Viewer':
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => MyInteractiveViewer()));
    //   break;
    // case 'Switch List Tile':
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MySwitchListTile()));
    //   break;
  }
}
