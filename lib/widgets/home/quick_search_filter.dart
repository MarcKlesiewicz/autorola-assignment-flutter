import 'package:autorola_assignment/providers/make_provider.dart';
import 'package:autorola_assignment/widgets/text/styled_text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiselect/multiselect.dart';

class QuickSearchFilter extends ConsumerStatefulWidget {
  const QuickSearchFilter({Key? key}) : super(key: key);

  @override
  ConsumerState<QuickSearchFilter> createState() => _QuickSearchFilterState();
}

class _QuickSearchFilterState extends ConsumerState<QuickSearchFilter> {
  @override
  Widget build(BuildContext context) {
    final asyncMakes = ref.watch(makesNotifierProvider);
    return Stack(
      children: [
        Image.asset(
          'assets/images/home-bg.jpg',
          height: 200,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        const Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              HeadlineMedium.onPrimary(
                  'Used vechiles that fit your dealership'),
              // DropDownMultiSelect(
              // onChanged: (List<String> x) {
              //   setState(() {
              //     selected = x;
              //   });
              // },
              // options: ['a', 'b', 'c', 'd'],
              // selectedValues: selected,
              // whenEmpty: 'Select Something',
              // ),
            ],
          ),
        )
      ],
    );
  }
}
