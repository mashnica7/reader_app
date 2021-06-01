import 'package:connectivity/connectivity.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reader_app/core/platform/network_info.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  NetworkInfo networkInfoImpl;
  MockConnectivity mockConnectivity;

  setUp(() {
    mockConnectivity = MockConnectivity();
    networkInfoImpl = NetworkInfo(mockConnectivity);
  });

  group('isConnected', () {
    test(
      'should forward the call to DataConnectionChecker.hasConnection',
      () async {
        // arrange
        const tHasConnectionFuture = ConnectivityResult.none;
        const tHasConnectionResult = false;
        when(mockConnectivity.checkConnectivity())
            .thenAnswer((_) async => tHasConnectionFuture);
        // act
        final result = await networkInfoImpl.isConnected;

        // assert
        verify(mockConnectivity.checkConnectivity());
        expect(result, tHasConnectionResult);
      },
    );
  });
}
