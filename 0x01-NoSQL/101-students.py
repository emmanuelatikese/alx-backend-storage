#!/usr/bin/env python3
'''aggregate sorting'''


def list_all(mongo_collection):
    '''function for sorting'''
    ans = mongo_collection.aggregate([
        {
            "$project": {
                "name": "$name",
                "averageScore": {"$avg": "$topics.score"}
            }
        },
        {"$sort": {"averageScore": -1}}
    ])
    return ans
