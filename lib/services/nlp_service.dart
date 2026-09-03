import 'package:flutter/services.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class NLPService {
  Interpreter? _interpreter;

  // The exact vocabulary mapped from your Python training script
  final List<String> _vocab = [
    '', '[UNK]', 'taka', 'i', 'on', 'for', 'just', 'it', 'cost', 'paid',
    'spent', 'bought', 'a', 'tickets', 'an', 'got', 'bill', 'cinema',
    'cleared', 'film', 'movie', 'took', 'tutoring', 'salary', 'my',
    'domain', 'cloudns', 'received', 'internet', 'rickshaw', 'ordered',
    'from', 'ticket', 'bus', 'purchased', 'paycheck', 'money', 'freelance',
    'uber', 'ride', 'water', 'earned', 'the', 'made', 'electric', 'daraz',
    'cash', 'ate', 'at', 'plectrums', 'guitar', 'spotify', 'plan',
    'family', 'watch', 'strap', 'new', 'unique', 'flavours', 'grabbed',
    'clothes', 'lunch', 'japanese', 'food', 'burger', 'shawarma', 'gyro', 'bhai'
  ];

  final List<String> _categories = [
    'food', 'transport', 'salary', 'utilities', 'movie', 'other'
  ];

  /// Loads the TFLite model from assets
  Future<void> initializeModel() async {
    try {
      _interpreter = await Interpreter.fromAsset('assets/model.tflite');
      print('NLP Model loaded successfully!');
    } catch (e) {
      print('Failed to load NLP model: $e');
    }
  }

  void dispose() {
    _interpreter?.close();
  }
}
