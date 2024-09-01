part of '../view/home_view.dart';

class HomeBlocListtile extends StatelessWidget {
  const HomeBlocListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeState>(
      builder: (context, state) {
        return !state.loading
            ? state.users != null
                ? CustomSeparated(
                    items: state.users!,
                    onPressed: (User item) {},
                  )
                : const Center(
                    child: Text('Kullanıcılar yok'),
                  )
            : const Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }
}
