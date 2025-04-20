import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:moodbeat/account/ui/logout_button.dart';
import 'package:moodbeat/account/ui/profile_row.dart';
import 'package:moodbeat/account/ui/user_avatar.dart';
import 'package:moodbeat/core/hooks/auth_hook.dart';
import 'package:moodbeat/shared/skeleton_row.dart';
import 'package:shimmer/shimmer.dart';

class AccountPage extends HookWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final query = useCurrentUserQuery();
    final userState = query?.state.data;
    final hasData = query?.state.hasData ?? false;
    final isLoading = !hasData;

    final displayName = userState?.data?.displayName ?? '';
    final email = userState?.data?.email ?? '';
    final avatarUrl = userState?.data?.avatarUrl ?? '';
    final product = userState?.data?.product ?? '';

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Color(0xFF9188F7),
            size: 32,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: const Text(
          "Account",
          style: TextStyle(
            color: Color(0xFF9188F7),
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: "Montserrat",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: isLoading
                  ? Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                      ),
                    )
                  : UserAvatar(avatarUrl: avatarUrl),
            ),
            const SizedBox(height: 20),
            const Text(
              'Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            isLoading
                ? const SkeletonRow(label: 'Name')
                : ProfileRow(label: 'Name', value: displayName),
            isLoading
                ? const SkeletonRow(label: 'E-mail')
                : ProfileRow(label: 'E-mail', value: email),
            isLoading
                ? const SkeletonRow(label: 'Subscription')
                : ProfileRow(label: 'Subscription', value: product),
            const SizedBox(height: 20),
            const Center(child: LogoutButton()),
          ],
        ),
      ),
    );
  }
}
