Icon with badge for notifications

How to use
This widget can be used in appbar, bottom navigation and drawer.

Usage:

          IconBadge(
            icon: Icon(Icons.notifications_none),
            itemCount: 0,
            badgeColor: Colors.red,
            hideZero: true,
            onTap: () {
              print('test');
            },
          ),
