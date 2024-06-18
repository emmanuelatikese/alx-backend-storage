#!/usr/bin/env python3
'''updating db'''


def update_topics(mongo_collection, name, topics):
    '''updating function'''
    return mongo_collection.update_many(
        {"name": name}, {'$set': {"topics": topics}})
