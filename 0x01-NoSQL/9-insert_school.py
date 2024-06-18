#!/usr/bin/env python3
'''inserting as usually'''


def insert_school(mongo_collection, **kwargs):
    '''inserting function'''
    return mongo_collection.insert(kwargs)