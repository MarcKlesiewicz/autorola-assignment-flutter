import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/models/articlesmodel.dart';
import 'package:autorola_assignment/pages/vehicels.page.dart';
import 'package:autorola_assignment/providers/auctions_provider.dart';
import 'package:autorola_assignment/providers/countries_provider.dart';
import 'package:autorola_assignment/providers/fueltype_provider.dart';
import 'package:autorola_assignment/providers/make_provider.dart';
import 'package:autorola_assignment/router/router.gr.dart';
import 'package:autorola_assignment/utils/country.dart';
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
  List<ArticlesModel> filteredArticels = [];

  @override
  Widget build(BuildContext context) {
    final asyncMakes = ref.watch(makesNotifierProvider);
    final asyncFueltypes = ref.watch(fueltypeNotifierProvider);
    final asyncCountries = ref.watch(countriesNotifierProvider);
    final asyncArticels = ref.watch(auctionsNotifierProvider);

    const inputDecoration = InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadiuses.r02,
      ),
    );
    return asyncArticels.maybeWhen(
      data: (data) {
        return SizedBox(
          height: 250,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/home-bg.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Align(
                alignment: Alignment.center,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 992),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const HeadlineMedium.onPrimary(
                          'Used vechiles that fit your dealership'),
                      Row(
                        children: [
                          Expanded(
                            child: DropDownMultiSelect(
                                onChanged: (List<String> makes) {
                                  setState(() {
                                    selectedMakes = makes;
                                  });
                                  _onFilterChanged(data!);
                                },
                                options: asyncMakes.value!,
                                selectedValues: selectedMakes,
                                whenEmpty: 'Any make',
                                decoration: inputDecoration),
                          ),
                          Expanded(
                            child: DropDownMultiSelect(
                              onChanged: (List<String> fuelTypes) {
                                setState(() {
                                  selectedFueltypes = fuelTypes;
                                });
                                _onFilterChanged(data!);
                              },
                              options: asyncFueltypes.value!,
                              selectedValues: selectedFueltypes,
                              whenEmpty: 'Any fueltype',
                              decoration: inputDecoration,
                            ),
                          ),
                          Expanded(
                            child: DropDownMultiSelect(
                              onChanged: (List<String> countries) {
                                setState(() {
                                  selectedCountries = countries;
                                });
                                _onFilterChanged(data!);
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
                          onPressed: () => _onSubmitted(),
                          icon: const Icon(Icons.drive_eta),
                          label: TitleLarge.onPrimary(
                              'Show ${_getSubmitButtonText(data!.length.toString())}'),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.lightBlue)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
      orElse: () {
        return const SizedBox();
      },
    );
  }

  _onSubmitted() {
    context.router.navigate(
      VehiclesRoute(
        makes:
            'makes=${selectedMakes.isNotEmpty ? selectedMakes.join(',') : 'any'},',
        fuelTypes:
            'fuelTypes=${selectedFueltypes.isNotEmpty ? selectedFueltypes.join(',') : 'any'},',
        countries:
            'countries=${selectedCountries.isNotEmpty ? selectedCountries.join(',') : 'any'}',
      ),
    );
  }

  String _getSubmitButtonText(String total) {
    if (selectedMakes.isNotEmpty ||
        selectedCountries.isNotEmpty ||
        selectedFueltypes.isNotEmpty) {
      return filteredArticels.length.toString();
    } else {
      return total;
    }
  }

  _onFilterChanged(List<ArticlesModel> articles) {
    filteredArticels.clear();
    if (selectedMakes.isNotEmpty) {
      for (var make in selectedMakes) {
        for (var article in articles) {
          if (article.headline.toLowerCase().contains(make.toLowerCase())) {
            if (!filteredArticels.contains(article)) {
              filteredArticels.add(article);
            }
          }
        }
      }
    }
    if (selectedFueltypes.isNotEmpty) {
      for (var fuel in selectedFueltypes) {
        for (var article in articles) {
          if (article.details.toLowerCase().contains(fuel.toLowerCase())) {
            if (!filteredArticels.contains(article)) {
              filteredArticels.add(article);
            }
          }
        }
      }
    }
    if (selectedCountries.isNotEmpty) {
      for (var country in selectedCountries) {
        for (var article in articles) {
          if (article.countryCode.contains(getCountryCode(country))) {
            if (!filteredArticels.contains(article)) {
              filteredArticels.add(article);
            }
          }
        }
      }
    }
    setState(() {});
  }
}
