#!/usr/bin/env python3
'''working with python lib: pymongo'''


def list_all(mongo_collection):
    '''starting with a func'''
    list_sch = mongo_collection.find()
    return [] if list_sch is {} else list_sch
