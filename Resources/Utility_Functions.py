import random
import os
import json
import csv
import logging


def get_random_number(start, end):
    """
    It generates random number in a given range.
    :return: Random number
    """
    number = random.randint(start, end)
    return str(number)


def get_random_date():
    date = get_random_number(1, 28)
    month = get_random_number(1, 12)
    year = get_random_number(1990, 2017)
    return str(date) + '/' + str(month) + '/' + str(year)


def read_json(path, file_name):
    """
    This method will read the JSON from different folder and return the JSON object.
    :param path: Path to the json file
    :param file_name: json file name
    :return: JSON object
    """
    with open(os.path.join(os.path.join(os.getcwd(), str(path)), file_name)) as json_obj:
        return json.load(json_obj)


def read_csv(file_path):
    """
    Reads data from csv file.
    :param file_path: CSV file path
    :return:
    """
    rows = []
    try:
        with open(file_path, 'r') as file:
            csvreader = csv.reader(file)
            header = next(csvreader)
            for row in csvreader:
                rows.append(row)
        logging.info(header)
        logging.info(rows)
    except Exception:
        logging.info('File not found')


if __name__ == '__main__':
    read_csv("/Users/shakti/Documents/Trigent/api_automation/TestData/user_data.csv")