import 'package:flutter/material.dart';

class UserAvatar extends StatefulWidget {
  final String? avatarUrl;

  const UserAvatar({super.key, this.avatarUrl});

  @override
  State<UserAvatar> createState() => _UserAvatarState();
}

class _UserAvatarState extends State<UserAvatar> {
  bool _isLoaded = false;

  bool get _hasAvatar =>
      widget.avatarUrl != null && widget.avatarUrl!.isNotEmpty;

  @override
  void initState() {
    super.initState();
    if (_hasAvatar) {
      _preloadImage(widget.avatarUrl!);
    }
  }

  @override
  void didUpdateWidget(covariant UserAvatar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_hasAvatar && oldWidget.avatarUrl != widget.avatarUrl) {
      _preloadImage(widget.avatarUrl!);
    }
  }

  void _preloadImage(String url) {
    final image = NetworkImage(url);
    image.resolve(const ImageConfiguration()).addListener(
          ImageStreamListener(
            (imageInfo, synchronousCall) {
              if (mounted) setState(() => _isLoaded = true);
            },
            onError: (error, stackTrace) {
              if (mounted) setState(() => _isLoaded = false);
            },
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final showImage = _hasAvatar && _isLoaded;

    return CircleAvatar(
      radius: 40,
      backgroundColor: const Color(0x919188F7),
      backgroundImage: showImage ? NetworkImage(widget.avatarUrl!) : null,
      child: !showImage
          ? const Icon(Icons.face, size: 50, color: Colors.white)
          : null,
    );
  }
}
