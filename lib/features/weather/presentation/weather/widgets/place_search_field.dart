import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searchfield/searchfield.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/features/weather/data/models/location_model.dart';
import 'package:weather_app/features/weather/presentation/weather/bloc/weather_bloc.dart';

class PlaceSearchField extends StatefulWidget {
  const PlaceSearchField({super.key});

  @override
  State<PlaceSearchField> createState() => _PlaceSearchFieldState();
}

class _PlaceSearchFieldState extends State<PlaceSearchField> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        final suggestions = state.locations;

        return SearchField(
          focusNode: _focusNode,
          onSearchTextChanged: (query) {
            if (query.isNotEmpty) {
              context.read<WeatherBloc>().add(
                    WeatherEvent.getLocationByName(
                      query: query,
                    ),
                  );
            }
            return null;
          },
          onSubmit: (query) {
            _focusNode.unfocus();
            WidgetsBinding.instance.addPostFrameCallback(
              (_) => context.read<WeatherBloc>().add(
                    WeatherEvent.getWeatherByName(
                      query: query,
                    ),
                  ),
            );
          },
          onTapOutside: (_) {
            _focusNode.unfocus();
          },
          hint: 'City name, zip code, etc.',
          itemHeight: 50,
          suggestionStyle: const TextStyle(fontSize: 24, color: Colors.white),
          suggestionsDecoration: SuggestionDecoration(
            color: AppColors.tertiary,
            border: Border.all(color: AppColors.secondary),
            borderRadius: BorderRadius.circular(8),
          ),
          marginColor: AppColors.tertiary,
          searchInputDecoration: SearchInputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.secondary),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.secondary),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.onSecondary,
              ),
            ),
            fillColor: AppColors.tertiary,
            filled: true,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            cursorColor: AppColors.white,
            hintStyle: const TextStyle(color: Colors.grey),
          ),
          scrollbarDecoration: ScrollbarDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onSuggestionTap: (sug) {
            final item = sug.item;

            if (item != null &&
                item.latitude != null &&
                item.longitude != null) {
              _focusNode.unfocus();

              WidgetsBinding.instance.addPostFrameCallback(
                (_) => context.read<WeatherBloc>().add(
                      WeatherEvent.getWeatherByLocation(
                        latitude: item.latitude!,
                        longitude: item.longitude!,
                        cityName: item.name ?? '',
                      ),
                    ),
              );
            }
          },
          suggestions: suggestions.map((e) {
            final name = e.name ?? '';
            final state = e.state ?? '';
            final countryCode = e.countryCode ?? '';

            final fullName = [name, state, countryCode]
                .where((e) => e.isNotEmpty)
                .join(', ');

            return SearchFieldListItem<LocationModel>(
              fullName,
              item: e,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  fullName,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
