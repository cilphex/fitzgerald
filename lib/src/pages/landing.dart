part of fitzgerald;

class LandingPage extends StatefulComponent {
  LandingPage();

  LandingPageState createState() => new LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  void _showDrawer() {
    showDrawer(
      context: context,
      child: new Block(<Widget>[
        new DrawerHeader(child: new Text('Fitzgerald')),
        new DrawerItem(
          child: new Text('Uno')
        ),
        new DrawerDivider(),
        new DrawerItem(
          child: new Text('Dos')
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
      center: new Text('Fitzgerald'),
      right: [ new IconButton(icon: 'action/search') ]
    );
  }

  Widget _buildBody() {
    return new Center(
      child: new Text('Fitzgerald App')
    );
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      toolBar: _buildToolBar(),
      body: _buildBody()
    );
  }
}
