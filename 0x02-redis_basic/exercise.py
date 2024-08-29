#!/usr/bin/env python3
'''writing a class for redis'''
import redis
from uuid import uuid4
from typing import Union, Optional, Callable


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

    def get(self, key: str,
            fn: Callable = None) -> Union[str, float, bytes, int]:
        '''gettting int or str'''
        dt = self._redis.get(key)
        return fn(dt) if fn else dt

    def get_str(self, key: str) -> str:
        ''' getting str'''
        return self._redis.get(key, lambda y: y.decode('utf-8'))

    def get_int(self, key: str) -> int:
        '''getting int'''
        return int(self._redis.get(key, lambda y: int(y)))
