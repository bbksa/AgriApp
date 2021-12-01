import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'src/locations.dart' as locations;

class Contactus extends StatefulWidget {
  const Contactus({ Key? key }) : super(key: key);

  @override
  _ContactusState createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade300,
          centerTitle: true,
          elevation: 1.0,
          title: const SizedBox(height: 25.0, child: Text("Contact Us")),
        ),
        body: Column(
          children: [
            Container(
              height: 250,
              margin: const EdgeInsets.all(10),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(28.26294233949198, 84.16037342665996),
                  zoom: 6,
                ),
                markers: _markers.values.toSet(),
              ),
            ),
            Container(
              color: Colors.orange.shade100,
              height: 250,
              margin: const EdgeInsets.all(10),
              child: const Text("Contact Us..."
              ),
            ),
          ],
        ),
    );
  }
}