
// test/models/user_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:simple_flutter_app/models/user.dart';

void main() {
	group('User Model Tests', () {
		test('User model should correctly instantiate with given id and email', () {
			final user = User(id: '123', email: 'test@example.com');

			expect(user.id, '123');
			expect(user.email, 'test@example.com');
		});

		test('User model should serialize to JSON correctly', () {
			final user = User(id: '123', email: 'test@example.com');
			final json = user.toJson();

			expect(json, {
				'id': '123',
				'email': 'test@example.com',
			});
		});

		test('User model should deserialize from JSON correctly', () {
			final json = {
				'id': '123',
				'email': 'test@example.com',
			};
			final user = User.fromJson(json);

			expect(user.id, '123');
			expect(user.email, 'test@example.com');
		});

		test('User model should return a string representation correctly', () {
			final user = User(id: '123', email: 'test@example.com');
			final userString = user.toString();

			expect(userString, 'User{id: 123, email: test@example.com}');
		});
	});
}
