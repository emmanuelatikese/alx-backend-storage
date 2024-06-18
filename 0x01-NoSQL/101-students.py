#!/usr/bin/env python3
'''aggregate sorting'''


def list_all(mongo_collection):
    '''function for sorting'''
    return mongo_collection.aggregate([
        {"$project": {"name": "$name", "averageScore": {
            "$avg": "$topics.score"}}}, {"$sort": {"averageScore": -1}}])
