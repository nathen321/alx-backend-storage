#!/usr/bin/env python3
""" MongoDB Operations with Python using pymongo """


def list_all(mongo_collection):
    """ List all documents in Python """
    doc = mongo_collection.find()
    if doc.count() == 0:
        return []
    return doc
