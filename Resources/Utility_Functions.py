import random
import os
import json


def get_random_number(start, end):
    """
    It generates random number in a given range.
    :return: Random number
    """
    number = random.randint(start, end)
    return str(number)


def get_random_date():
    date = get_random_number(1, 12)
    month = get_random_number(1, 28)
    year = get_random_number(1990, 2017)
    return str(date) + '/' + str(month) + '/' + str(year)


def read_json(path, file_name):
    """
    This method will read the JSON from different folder and return the JSON object.
    :param path: Path to the jsin file
    :param file_name: json file name
    :return: JSON object
    """
    with open(os.path.join(os.path.join(os.getcwd(), str(path)), file_name)) as json_obj:
        return json.load(json_obj)
