     /*    Center(
          child: FutureBuilder<ProfileModel>(
            future: getUser.getuser() ,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.firstName);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),*/