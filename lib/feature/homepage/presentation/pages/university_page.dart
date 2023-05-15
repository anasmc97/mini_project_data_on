import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project_data_on/core/presentation/mixins/failure_message_handler.dart';
import 'package:mini_project_data_on/core/utils/colors.dart';
import 'package:mini_project_data_on/core/extensions/context_extensions.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/blocs/university_bloc/university_bloc.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/blocs/university_bloc/university_event.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/blocs/university_bloc/university_state.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/widgets/card_university_widget.dart';

class UniversityPage extends StatelessWidget with FailureMessageHandler {
  const UniversityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 50,
                  width: context.media.size.width - 40,
                  child: TextFormField(
                    onChanged: (value) {
                      context.read<UniversityBloc>().add(
                            UniversityEvent.loadUniversitysSearched(
                                keyword: value),
                          );
                    },
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      hintText: "Enter University Name",
                      prefixIcon: const Visibility(
                        visible: true,
                        child: Icon(Icons.search),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              BlocConsumer<UniversityBloc, UniversityState>(
                listener: (context, state) {
                  state.universitysOrFailureOption.fold(
                    () => null,
                    (either) => either.fold(
                        (l) => handleFailure(context, l), (r) => null),
                  );
                },
                builder: (context, state) {
                  if (state.status == Status.loading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: AppColor.blueDarkest,
                      ),
                    );
                  } else {
                    return SizedBox(
                      height: context.media.size.height * 1 - 70,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return CardUniversityWidget(
                            index: index,
                            name: (state.universitysSearched.isEmpty)
                                ? state.universitys[index].name
                                : state.universitysSearched[index].name,
                            country: (state.universitysSearched.isEmpty)
                                ? state.universitys[index].country
                                : state.universitysSearched[index].country,
                            stateProvince: (state.universitysSearched.isEmpty)
                                ? state.universitys[index].stateProvince
                                : state
                                    .universitysSearched[index].stateProvince,
                          );
                        },
                        itemCount: state.universitys.length,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
