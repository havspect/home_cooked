import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_cooked/models/recipe.dart';
import 'package:home_cooked/models/weekplan.dart';
import 'package:home_cooked/models/weekplan_recipes.dart';
import 'package:home_cooked/providers/weekplan_list_provider.dart';
import 'package:home_cooked/providers/weekplan_recipes_provider.dart';
import 'package:intl/intl.dart';

class WeekPlanPage extends ConsumerStatefulWidget {
  const WeekPlanPage({super.key});

  @override
  ConsumerState<WeekPlanPage> createState() => _WeekPlanPageState();
}

class _WeekPlanPageState extends ConsumerState<WeekPlanPage> {
  DateTime _focusDate = DateTime.now();

  @override
  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<WeekplanRecipes>> weekplanList =
        ref.watch(weekplanRecipesListProvider('rj7xej3kkcuznrb'));

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Wochenplan",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              // TODO: Riverpod cannot reload inside showModalBottomSheet
              // Idea: Move state to the outer component and pass list to function.
              ElevatedButton(
                  onPressed: () => showModalBottomSheet<void>(
                      useRootNavigator: true,
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            final AsyncValue<List<Weekplan>> wpList =
                                ref.watch(weekplanListProvider);
                            return Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: SizedBox(
                                  height: 500,
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Wochenpläne",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      switch (wpList) {
                                        AsyncData(:final value) =>
                                          Text(value.length.toString()),
                                        AsyncError() => const Text(
                                            'Oops, something unexpected happened'),
                                        _ => const CircularProgressIndicator(),
                                      },
                                      Text(
                                        "Neuer Wochenplan?",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      )
                                    ],
                                  )),
                            );
                          },
                        );
                      }),
                  child: const Text('Wochenplan wechseln')),
            ],
          ),
          EasyInfiniteDateTimeLine(
            firstDate: DateTime.now(),
            focusDate: _focusDate,
            lastDate: DateTime(2033, 1, 1),
            dayProps: const EasyDayProps(
              landScapeMode: true,
              activeDayStyle: DayStyle(
                borderRadius: 12.0,
              ),
              dayStructure: DayStructure.dayStrDayNum,
            ),
            onDateChange: (DateTime selectedDate) => setState(() {
              _focusDate = selectedDate;
            }),
          ),
          const SizedBox(
            height: 10,
          ),
          switch (weekplanList) {
            AsyncData(:final value) => RecpiesNextDays(
                date: _focusDate,
                wp: value,
              ),
            AsyncError() => const Text('Oops, something unexpected happened'),
            _ => const CircularProgressIndicator(),
          }
        ],
      ),
    );
  }
}

class RecpiesNextDays extends StatelessWidget {
  final List<WeekplanRecipes> wp;
  final DateTime date;

  const RecpiesNextDays({super.key, required this.wp, required this.date});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _DayHeadline(
            headline: 'Heute',
            date: date,
          ),
          RecipesPerDay(
            wp: wp,
            date: date,
          ),
          _DayHeadline(
            headline: 'Morgen',
            date: date.add(const Duration(days: 1)),
          ),
          RecipesPerDay(
            wp: wp,
            date: date.add(const Duration(days: 1)),
          ),
          _DayHeadline(
            headline: 'Übermorgen',
            date: date.add(const Duration(days: 2)),
          ),
          RecipesPerDay(
            wp: wp,
            date: date.add(const Duration(days: 2)),
          )
        ],
      ),
    );
  }
}

class _DayHeadline extends StatelessWidget {
  final String headline;
  final DateTime date;

  // ignore: unused_element
  const _DayHeadline({super.key, required this.headline, required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            DateFormat.yMMMd().format(date),
            style: Theme.of(context).textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}

class RecipesPerDay extends StatelessWidget {
  final List<WeekplanRecipes> wp;
  final DateTime date;

  const RecipesPerDay({super.key, required this.wp, required this.date});

  @override
  Widget build(BuildContext context) {
    List<Recipe?> recipes = [];

    try {
      recipes = wp
          .where((element) => DateUtils.isSameDay(element.date, date))
          .map((e) => e.expand.recipe)
          .toList();
    } catch (e) {
      rethrow;
    }

    if (recipes.isNotEmpty) {
      List<Widget> children = [];

      for (var recipe in recipes) {
        children.add(
          Text(recipe?.title ?? ''),
        );
      }

      // children.add(const RecipeCardAdd());

      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: children,
          ),
        ),
      );
    } else {
      return const Text("TODO");
    }
  }
}
