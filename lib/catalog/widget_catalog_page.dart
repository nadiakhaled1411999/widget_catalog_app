import 'package:flutter/material.dart';
import 'package:widget_catalog/widgets/align_transition_demo.dart';
import 'package:widget_catalog/widgets/animated_default_text_style.dart';
import 'package:widget_catalog/widgets/backdrop_filter_demo.dart';
import 'package:widget_catalog/widgets/draggable_scrollable_sheet.dart';
import 'package:widget_catalog/widgets/expansion_tile_demo.dart';
import 'package:widget_catalog/widgets/notification_listener.dart';
import 'package:widget_catalog/widgets/rotation_transition_demo.dart';
import 'package:widget_catalog/widgets/shader_mask_demo.dart';
import 'package:widget_catalog/widgets/size_transition_demo.dart';
import 'package:widget_catalog/widgets/theme.dart';
import 'widget_demo_page.dart';
import '../widgets/animated_container_demo.dart';
import '../widgets/hero_demo.dart';

class WidgetCatalogPage extends StatelessWidget {
  const WidgetCatalogPage({super.key});


  final List<Map<String, dynamic>> widgets = const [
    {
      "name": "AnimatedContainer",
      "description": "A container that implicitly animates changes in its properties.",
      "widget": AnimatedContainerDemo(),
    },
 {
    "name": "ExpansionTile",
    "description": "A widget that can expand/collapse to show or hide children.",
    "widget": ExpansionTileDemo(),
  },
    {
      "name": "Hero",
      "description": "Used for creating hero animations between screens.",
      "widget": HeroDemo(),
    },
{
    "name": "ShaderMask",
    "description": "Applies a shader (like gradient) to its child.",
    "widget": ShaderMaskDemo(),
  },{
    "name": "BackdropFilter",
    "description": "Applies a blur or filter effect to the background.",
    "widget": BackdropFilterDemo(),
  },
 {
    "name": "AlignTransition",
    "description": "Animates the alignment of a child smoothly within a parent.",
    "widget": AlignTransitionDemo(),
  },
{
  "name": "SizeTransition",
  "description": "Animates the size of a widget vertically or horizontally.",
  "widget": SizeTransitionDemo(),
},
{
  "name": "RotationTransition",
  "description": "Animates the rotation of a widget continuously.",
  "widget": RotationTransitionDemo(),
},{
  "name": "AnimatedDefaultTextStyle",
  "description": "Animates changes to the text style of a child Text widget.",
  "widget": AnimatedDefaultTextStyleDemo(),
},
{
  "name": "Theme",
  "description": "Applies a theme to descendant widgets for consistent styling.",
  "widget": ThemeDemo(),
},
{
  "name": "DraggableScrollableSheet",
  "description": "A scrollable bottom sheet that can be dragged to expand or collapse.",
  "widget": DraggableScrollableSheetDemo(),
},
{
  "name": "NotificationListener",
  "description": "Listens for notifications bubbling up the tree from descendant widgets.",
  "widget": NotificationListenerDemo(),
},


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget Catalog")),
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (context, index) {
          final widgetData = widgets[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(widgetData["name"]),
              subtitle: Text(widgetData["description"]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => WidgetDemoPage(
                      widgetName: widgetData["name"],
                      widgetDemo: widgetData["widget"],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
