import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviewer_mobile/core/auth/auth_service.dart';
import 'package:reviewer_mobile/features/profile/profile_view_model.dart';
import 'package:reviewer_mobile/routes.dart';
import 'package:reviewer_mobile/services/user_service.dart';
import 'package:routefly/routefly.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileViewModel(context.read<UserService>(), context.read<AuthService>())..fetchProfileData(),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ProfileViewModel>();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await viewModel.logout();
              if (context.mounted) {
                Routefly.navigate(routePathLogin, T.replaceAll);
              }
            },
          )
        ],
      ),
      body: _buildBody(context, viewModel, theme),
    );
  }

  Widget _buildBody(BuildContext context, ProfileViewModel viewModel, ThemeData theme) {
    switch (viewModel.state) {
      case ViewState.loading:
        return const Center(child: CircularProgressIndicator());
      case ViewState.error:
        return Center(child: Text('Erro ao carregar perfil: ${viewModel.errorMessage}'));
      case ViewState.loaded:
        if (viewModel.userProfile == null) {
          return const Center(child: Text('Não foi possível carregar os dados do perfil.'));
        }
        final user = viewModel.userProfile!;
        return RefreshIndicator(
          onRefresh: viewModel.fetchProfileData,
          child: ListView(
            children: [
              _buildProfileHeader(user, theme),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Minhas Reviews', style: theme.textTheme.titleLarge),
              ),
              const Divider(indent: 16, endIndent: 16),
              if (viewModel.userReviews.isEmpty)
                const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Center(child: Text('Você ainda não fez nenhuma review.')),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: viewModel.userReviews.length,
                  itemBuilder: (ctx, index) {
                    final review = viewModel.userReviews[index];
                    return ListTile(
                      title: Text(review.title ?? 'Review sem título'),
                      subtitle: Text(review.content ?? ''),
                    );
                  },
                ),
            ],
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildProfileHeader(UserResponseDTO user, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          const SizedBox(height: 16),
          Text(user.name ?? 'Usuário sem nome', style: theme.textTheme.headlineSmall),
          const SizedBox(height: 4),
          Text('@${user.login ?? ''}', style: theme.textTheme.titleMedium?.copyWith(color: Colors.grey[600])),
          const SizedBox(height: 12),
          Text(
            user.bio ?? 'Edite seu perfil para adicionar uma bio.',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatColumn('Reviews', user.reviewsCount ?? 0),
              _buildStatColumn('Seguidores', user.followersCount ?? 0),
              _buildStatColumn('Seguindo', user.followingCount ?? 0),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String label, int count) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(count.toString(), style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
        Container(margin: const EdgeInsets.only(top: 4.0), child: Text(label, style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey))),
      ],
    );
  }
}