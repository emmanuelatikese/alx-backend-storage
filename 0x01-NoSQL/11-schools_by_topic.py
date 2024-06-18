#!/usr/bin/env python3
'''finding for a something'''


def schools_by_topic(mongo_collection, topic):
    '''finding the whole thing'''
    return mongo_collection.find({"topic": topic})