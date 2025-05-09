import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat/core/hooks/profile_hook.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

class HideArtistScreen extends HookWidget {
  const HideArtistScreen({super.key});

  ProfileApi get profileApi => getIt<ProfileApi>();

  @override
  Widget build(BuildContext context) {
    final query = useListSelectedArtists();
    final searchQuery = useState('');
    final artists = query.data?.data ?? [];

    final filtered = artists
        .where((artist) =>
            artist.artistName
                ?.toLowerCase()
                .contains(searchQuery.value.toLowerCase()) ??
            false)
        .toList()
      ..sort((a, b) => a.artistName!.compareTo(b.artistName!));

    final hiddenArtists = filtered.where((a) => a.hidden == true).toList();
    final visibleArtists = filtered.where((a) => a.hidden != true).toList();

    Widget buildArtistRow(DbGetUserSelectedArtistsRow artist) {
      final isHidden = artist.hidden == true;
      final actionIcon = isHidden ? Icons.remove_circle : Icons.add_circle;
      final actionLabel = isHidden ? 'Show' : 'Hide';

      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(artist.artistImageUrl!),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                artist.artistName!,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            IconButton(
              icon: Icon(actionIcon, color: const Color(0xFF9188F7)),
              onPressed: () async {
                final confirm = await showDialog<bool>(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('$actionLabel Artist'),
                    content: Text(
                        'Are you sure you want to $actionLabel ${artist.artistName}?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: Text(actionLabel),
                      ),
                    ],
                  ),
                );

                if (confirm != true) return;

                try {
                  if (isHidden) {
                    await profileApi.showArtist(artistId: artist.artistId!);
                  } else {
                    await profileApi.hideArtist(artistId: artist.artistId!);
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          '$actionLabel successful for ${artist.artistName}'),
                      backgroundColor: Colors.green,
                    ),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                } finally {
                  query.refetch();
                }
              },
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF9188F7)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Manage Artists',
          style: TextStyle(
            color: Color(0xFF9188F7),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // 🔍 Search bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFBF0),
                borderRadius: BorderRadius.circular(32),
              ),
              child: TextField(
                onChanged: (value) => searchQuery.value = value,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Artist',
                  hintStyle: TextStyle(fontFamily: 'Montserrat'),
                  suffixIcon: Icon(Icons.search, color: Color(0xFF9188F7)),
                ),
              ),
            ),

            // 🎵 Artist list
            Expanded(
              child: ListView(
                children: [
                  if (hiddenArtists.isNotEmpty) ...[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Hidden',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    ...hiddenArtists.map(buildArtistRow),
                    const SizedBox(height: 24),
                  ],
                  if (visibleArtists.isNotEmpty) ...[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Visible',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    ...visibleArtists.map(buildArtistRow),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
