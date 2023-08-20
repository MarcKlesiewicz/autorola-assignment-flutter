import 'package:autorola_assignment/providers/make_provider.dart';
import 'package:autorola_assignment/utils/list_extensions.dart';
import 'package:autorola_assignment/utils/utils.dart';
import 'package:autorola_assignment/widgets/text/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiselect/multiselect.dart';

class QuickSearchFilter extends ConsumerStatefulWidget {
  const QuickSearchFilter({Key? key}) : super(key: key);

  @override
  ConsumerState<QuickSearchFilter> createState() => _QuickSearchFilterState();
}

class _QuickSearchFilterState extends ConsumerState<QuickSearchFilter> {
  List<String> selectedMakes = [];
  List<String> selectedFueltypes = [];
  List<String> selectedCountries = [];
  @override
  Widget build(BuildContext context) {
    final asyncMakes = ref.watch(makesNotifierProvider);
    final asyncFueltypes = ref.watch(makesNotifierProvider);
    final asyncCountries = ref.watch(makesNotifierProvider);

    const inputDecoration = InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadiuses.r02,
      ),
    );
    return Stack(
      children: [
        Image.asset(
          'assets/images/home-bg.jpg',
          height: 200,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 992),
            child: Column(
              children: [
                const HeadlineMedium.onPrimary(
                    'Used vechiles that fit your dealership'),
                Row(
                  children: [
                    Expanded(
                      child: DropDownMultiSelect(
                          onChanged: (List<String> x) {
                            setState(() {
                              selectedMakes = x;
                            });
                          },
                          options: asyncMakes.value!,
                          selectedValues: selectedMakes,
                          whenEmpty: 'Any make',
                          decoration: inputDecoration),
                    ),
                    Expanded(
                      child: DropDownMultiSelect(
                        onChanged: (List<String> x) {
                          setState(() {
                            selectedFueltypes = x;
                          });
                        },
                        options: asyncFueltypes.value!,
                        selectedValues: selectedFueltypes,
                        whenEmpty: 'Any fueltype',
                        decoration: inputDecoration,
                      ),
                    ),
                    Expanded(
                      child: DropDownMultiSelect(
                        onChanged: (List<String> x) {
                          setState(() {
                            selectedCountries = x;
                          });
                        },
                        options: asyncCountries.value!,
                        selectedValues: selectedCountries,
                        whenEmpty: 'Any countries',
                        decoration: inputDecoration,
                      ),
                    ),
                  ].gap(Gaps.mdH),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.drive_eta),
                    label: const TitleLarge.onPrimary('hello'),
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.lightBlue)),
                  ),
                ),
              ].gap(Gaps.mdV),
            ),
          ),
        )
      ],
    );
  }
}
