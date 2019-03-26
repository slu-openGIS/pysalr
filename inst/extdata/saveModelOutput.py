import os
import pysal as ps
import numpy as np
# New Imports
import json

def serialize(obj):
    """JSON serializer for objects not serializable by default json code"""
    if isinstance(obj, np.ndarray):
        return obj.tolist()

    return obj.__dict__


def saveModelOutput(obj, outFileName, path="../results"):  # This is the python function for saving the models as JSON

    # Format Object as JSON
    obj_dump = json.dumps(obj, default=serialize)

    # Check if directory path exists, if not, create it
    try:
        os.makedirs(path)
    except FileExistsError:
        pass

    # Format outfile path, Check if outfile exists, & Save JSON File
    file = path + '/' + outFileName + '.json'

    try:
        open(file, 'x')
    except FileExistsError:
        pass

    with open(file, 'w') as outPath:
        json.dump(obj_dump, outPath)
    outPath.close