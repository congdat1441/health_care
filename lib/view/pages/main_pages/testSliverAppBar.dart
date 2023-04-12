// import 'package:flutter/material.dart';
//
// class MyPage extends StatefulWidget {
//   const MyPage({super.key});
//
//   @override
//   _MyPageState createState() => _MyPageState();
// }
//
// class _MyPageState extends State<MyPage> {
//   late ScrollController _scrollController;
//   bool _isAppBarCollapsed = false;
//   double _scale = 1.0;
//   double _previousScale = 1.0;
//   @override
//   void initState() {
//     super.initState();
//     _scrollController = ScrollController();
//     _scrollController.addListener(() {
//       if (_scrollController.offset > 100 &&
//           !_scrollController.position.outOfRange) {
//         setState(() {
//           _isAppBarCollapsed = true;
//         });
//       } else {
//         setState(() {
//           _isAppBarCollapsed = false;
//         });
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         controller: _scrollController,
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: true,
//             expandedHeight: 200.0,
//             backgroundColor: _isAppBarCollapsed ? Colors.white : Colors.blue,
//             iconTheme: IconThemeData(
//               color: _isAppBarCollapsed
//                   ? Colors.black
//                   : Colors.white, // Đổi màu của Icon trở về
//             ),
//             title: Text(
//               'My Title',
//               style: TextStyle(
//                   color: _isAppBarCollapsed ? Colors.black : Colors.white),
//             ),
//             flexibleSpace: GestureDetector(
//               onLongPress: () {
//                 setState(() {
//                   // Kích hoạt chế độ zoom
//                   _isZoomed = true;
//                 });
//               },
//               child: _isZoomed ? _buildZoomableImage() : _buildNormalImage(),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) => ListTile(
//                 title: Text('Item $index'),
//               ),
//               childCount: 30,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// bool _isZoomed = false;
//
// Widget _buildNormalImage() {
//   return FlexibleSpaceBar(
//     background: Image.asset(
//       "assets/images/cisdemo.png",
//       width: double.infinity,
//       fit: BoxFit.cover,
//     ),
//   );
// }
//
// Widget _buildZoomableImage() {
//   return FlexibleSpaceBar(
//     background: InteractiveViewer(
//       maxScale: 10.0,
//       minScale: 1.0,
//       onInteractionEnd: (_) {
//         setState(() {
//           // Tắt chế độ zoom
//           _isZoomed = false;
//         });
//       },
//       child: Image.asset(
//         "assets/images/cisdemo.png",
//         width: double.infinity,
//         fit: BoxFit.cover,
//       ),
//     ),
//   );
// }




import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: GestureDetector(
              onLongPress: () {
                setState(() {
                  // Kích hoạt chế độ zoom
                  _isZoomed = true;
                });
              },
              child: _isZoomed ? _buildZoomableImage() : _buildNormalImage(),
            ),
          ),
        ],
      ),
    );
  }

  bool _isZoomed = false;

  Widget _buildNormalImage() {
    return FlexibleSpaceBar(
      background: Image.network(
        'https://example.com/image.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildZoomableImage() {
    return FlexibleSpaceBar(
      background: InteractiveViewer(
        maxScale: 10.0,
        minScale: 1.0,
        onInteractionEnd: (_) {
          setState(() {
            // Tắt chế độ zoom
            _isZoomed = false;
          });
        },
        child: Image.network(
          'https://example.com/image.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}