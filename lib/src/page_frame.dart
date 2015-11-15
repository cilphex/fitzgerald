part of fitzgerald;

class PageFrame extends StatefulComponent {
  PageFrame();

  _PageFrameState createState() => new _PageFrameState();
}

class _PageFrameState extends State<PageFrame> {
  Page _page = Page.novels;

  void _handlePageChange(Page value) {
    setState(() => _page = value);
    Navigator.of(context).pop();
  }

  String get _pageTitle {
    switch(_page) {
      case Page.novels: return "Novels";
      case Page.novellas: return "Novellas";
      case Page.short_stories: return "Short stories";
      case Page.quotes: return "Quotes";
      case Page.photos: return "Photos";
      case Page.about: return "About F. Scott Fitzgerald";
      default: return "Untitled page";
    }
  }

  void _showDrawer() {
    showDrawer(
      context: context,
      child: new Block(<Widget>[
        new DrawerHeader(child: new Text('Fitzgerald')),
        new DrawerItem(
          icon: 'action/book',
          child: new Text('Novels'),
          onPressed: () => _handlePageChange(Page.novels)
        ),
        new DrawerItem(
          icon: 'action/book',
          child: new Text('Novellas'),
          onPressed: () => _handlePageChange(Page.novellas)
        ),
        new DrawerItem(
          icon: 'action/book',
          child: new Text('Short Stories'),
          onPressed: () => _handlePageChange(Page.short_stories)
        ),
        new DrawerDivider(),
        new DrawerItem(
          icon: 'editor/format_quote',
          child: new Text('Quotes'),
          onPressed: () => _handlePageChange(Page.quotes)
        ),
        new DrawerItem(
          icon: 'image/photo_camera',
          child: new Text('Photos'),
          onPressed: () => _handlePageChange(Page.photos)
        ),
        new DrawerItem(
          icon: 'action/info',
          child: new Text('About F. Scott Fitzgerald'),
          onPressed: () => _handlePageChange(Page.about)
        ),
        new DrawerDivider(),
        new DrawerItem(
          icon: 'toggle/star',
          child: new Text('Rate the app')
        )
      ])
    );
  }

  Widget _buildToolBar() {
    return new ToolBar(
      left: new IconButton(
        icon: 'navigation/menu',
        onPressed: _showDrawer
      ),
      center: new Text(_pageTitle),
      right: [ new IconButton(icon: 'action/search') ]
    );
  }

  Widget _buildBody() {
    switch(_page) {
      case Page.novels: return new NovelsPage();
      case Page.novellas: return new NovellasPage();
      case Page.short_stories: return new ShortStoriesPage();
      case Page.quotes: return new QuotesPage();
      case Page.photos: return new PhotosPage();
      case Page.about: return new AboutPage();
      default: return new NovelsPage();
    }
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      toolBar: _buildToolBar(),
      body: _buildBody()
    );
  }
}
