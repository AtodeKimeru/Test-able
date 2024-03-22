from django.test import TestCase
from .models import MyModel

# Create your tests here.
class TestTurnRequest(TestCase):
    def test_turn_request(self):
        self.assertEqual(1, 1)


class MyModelTest(TestCase):
    def setUp(self):
        # Set up data for the tests
        MyModel.objects.create(name="test")

    def test_name(self):
        # Test the name field
        model = MyModel.objects.get(name="test")
        self.assertEqual(model.name, "test")