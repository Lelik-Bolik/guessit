import 'package:flutter/material.dart';
import 'package:guessit/presentation/widgets/option.dart';

/// The widget that holds the [Option] widgets.
///
/// A `Column` with [Option] wrapped in `Expanded`.
class OptionsList extends StatefulWidget {
  const OptionsList({
    Key key,
    @required this.options,
  }) : super(key: key);

  /// A List of proposed options (answers) for the question.
  ///
  /// Each option is represented by a `String`.
  final List<String> options;

  @override
  State<StatefulWidget> createState() => OptionListState();
}

/// The `State` for the [OptionsList]
class OptionListState extends State<OptionsList> {
  /// The options that have been selected.
  ///
  /// A `List` of `int`s representing the indexes of the selected options.
  List<int> _selectedItems = List<int>();
  // TODO: Implement the selection process.

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Returns a List of pairs of Widgets, a `SizedBox` and the [Option].
        // If the generated Widgets are the last in the list, we generate a trailing `SizedBox`.
        // We `expand` the result of the `generate` so that it returns a single flat (not nested) List.
        ...List.generate(widget.options.length, (index) {
          return [
            SizedBox(height: 16),
            Expanded(
                child: Option(
              index: index,
              text: widget.options[index],
              // TODO: Set 'onTap'
              onTap: () => print("Tap"),
            )),
            if (index == widget.options.length - 1) SizedBox(height: 16)
          ];
        }).expand((element) => element).toList()
      ],
    );
  }
}
