// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = PostApiService;

  Future<Response> getPosts() {
    final $url = '/posts';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getPost(int id) {
    final $url = '/posts/${id}';
    final $request = Request('GET', $url, client.baseUrl);
     var resp = client.send<dynamic, dynamic>($request);
     var x = resp.runtimeType;
     String str = '';
     resp.then((r)=> str = r.body.toString()).then(
         (r){
           str = r.toString();
         }
     );
     resp.then((r)=>debugPrint(r.toString()));
     resp.asStream().listen((r){
       str=r.toString();
     });
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> postPost(Map<String, dynamic> body) {
    final $url = '/posts';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
