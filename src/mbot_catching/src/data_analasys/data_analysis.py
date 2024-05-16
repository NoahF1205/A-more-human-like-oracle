import pandas as pd
import os


def read_quatrics(file_path):
    # read csv file
    with open(file_path, 'r') as f:
        data = pd.read_csv(f)
        data = data.drop([0, 1])
        data = data.to_numpy()
        print(data)

if __name__ == "__main__":
    csv_dir = "/home/wenchang/oracle/A-more-human-like-oracle/quatrics"
    file_name = "qualtrics-text.csv"
    file_path = os.path.join(csv_dir, file_name)
    read_quatrics(file_path)
