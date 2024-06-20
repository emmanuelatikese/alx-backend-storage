#!/usr/bin/env python3
'''writing a class for redis'''
import redis
from uuid import uuid4
from typing import Union


class Cache:
    '''the class is initialize'''
    def __init__(self) -> None:
        '''Here goes nothing'''
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[int, float, bytes, str]) -> str:
        '''creating a key'''
        new_key = str(uuid4())
        self._redis.set(new_key, data)
        return new_key
