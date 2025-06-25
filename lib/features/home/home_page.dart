import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviewer_mobile/features/home/home_view_model.dart';
import 'package:reviewer_mobile/shared/widgets/review_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(context.read())..fetchInitialReviews(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
        context.read<HomeViewModel>().fetchMoreReviews();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Timeline')),
      body: _buildBody(viewModel),
    );
  }

  Widget _buildBody(HomeViewModel viewModel) {
    switch (viewModel.state) {
      case ViewState.loading:
        return const Center(child: CircularProgressIndicator());
      case ViewState.error:
        return const Center(child: Text('Falha ao carregar as reviews.'));
      case ViewState.loaded:
        return RefreshIndicator(
          onRefresh: viewModel.fetchInitialReviews,
          child: ListView.builder(
            controller: _scrollController,
            itemCount: viewModel.reviews.length + 1,
            itemBuilder: (context, index) {
              if (index < viewModel.reviews.length) {
                final review = viewModel.reviews[index];
                return ListTile(
                  title: Text(review.title ?? 'Sem Título'),
                  subtitle: Text(review.content ?? ''),
                );
              } else if (viewModel.loadMoreState == LoadMoreState.loading) {
                return const Center(child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ));
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}