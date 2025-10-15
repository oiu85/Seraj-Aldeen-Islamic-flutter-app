import 'package:dartz/dartz.dart';
import '../../data/models/contact_model.dart';

abstract class ContactRepository {
  Future<Either<Exception, ContactResponse>> submitContactForm(
    ContactRequest request,
  );
}

