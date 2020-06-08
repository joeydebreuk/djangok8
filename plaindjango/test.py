from django.contrib.auth.models import User
from django.test import TestCase


class Test(TestCase):
    def test_if_it_works(self):
        self.assertFalse(User.objects.all().exists())
        User.objects.create(username="joey")
        self.assertTrue(User.objects.all().exists())
