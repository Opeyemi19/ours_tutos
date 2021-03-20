import sys
sys.path.append("..")
from src.panda import Panda
import unittest

#Test Unitaire en duplicant la création des Objets Panda diférents dans chaque Type de Test
"""
class TestPanda(unittest.TestCase):

    def test_panda_is_instance_of_panda(self):
        p = Panda("Kiko", 52)
        self.assertIsInstance(p, Panda)

    def test_panda_age_is_positive(self):
        p = Panda("Spodk", 829)
        self.assertGreater(p.age, 0)

"""

# Test Unitaire evitant la repetion des Objet Panda pour le Test grace à une fonction Native "setUp()"
"""
class TestPanda(unittest.TestCase):

    def setUp(self):
        self.p = Panda("Goti", 25)

    def test_panda_is_instance_of_panda(self):
        self.assertIsInstance(self.p, Panda)

    def test_panda_age_is_positive(self):
        self.assertGreater(self.p.age, 0)
"""


# Changer les infos ou mettre à zero les infos pour le test
class TestPanda(unittest.TestCase):

    def setUp(self):
        self.p = Panda("Goti", 25)

    def tearDown(self):
        self.p.age(15)

    def test_panda_is_instance_of_panda(self):
        self.assertIsInstance(self.p, Panda)

    def test_panda_age_is_positive(self):
        self.assertGreater(self.p.age, 0)





if __name__ == '__main__':
    unittest.main()