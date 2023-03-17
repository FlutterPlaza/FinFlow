import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/core/application/search_user_bloc/search_user_bloc.dart';
import 'package:fpb/core/application/search_user_bloc/search_user_state.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/presentation/widget/custom_search_input.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/core/presentation/widget/fpb_text_form_field.dart';

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({super.key, required this.box, this.textController});

  final BoxConstraints box;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    return Container(
      width: box.maxWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Search',
            style: TextStyle(
              fontSize: box.maxHeight * 0.03,
              fontWeight: FontWeight.bold,
            ),
          ),
          VerticalSpacingWidget(box: box),
          Container(
            width: box.maxWidth,
            child: FpbTextFormField(
              onChanged: (value) {
                // setState(() {});
              },
              // textController: nameController,
              label: '',
              showLabelText: false,
              hint: 'Name, email, identifier',
              box: box,
              validator: (val) {
                // if (val!.isEmpty) {
                //   return 'Field is required';
                // } else if (val.isValidName) {
                //   return null;
                // } else {
                //   return l10n.contactUsNameErrorText;
                // }
              },
            ),
            // child: CustomSearchInput(
            //   box: box,
            //   keyboardType: null,
            //   labelText: 'Name, email, identifier',
            //   onChanged: (search) async {
            //     print(search);
            //   },
            // ),
          ),
        ],
      ),
    );
  }
}

class UserSearchDisplay extends SearchDelegate<User> {
  final Bloc<SearchUserEvent, SearchUserBloc> userBloc;

  UserSearchDisplay(this.userBloc);

  @override
  List<Widget>? buildActions(BuildContext context) => null;

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: BackButtonIcon(),
      onPressed: () {
        // close(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    userBloc.add(SearchUserEvent(query));

    return BlocBuilder<SearchUserBloc, SearchUserState>(
      // bloc: userBloc,
      builder: (BuildContext context, SearchUserState state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.hasError) {
          return Container(
            child: Text('Error'),
          );
        }
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(state.users[index].name),
              onTap: () => close(context, state.users[index]),
            );
          },
          itemCount: state.users.length,
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) => Container();
}
