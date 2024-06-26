
enum FromWho { me, destination }

class Message {
  final String message;
  final String? imgUrl;
  final FromWho fromWho;

  Message({
    required this.message,
    this.imgUrl,
    required this.fromWho
  });
}