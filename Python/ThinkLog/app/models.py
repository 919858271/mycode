# !/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:      jianwen
# Email:       npujianwenxu@163.com
# models.py

from flask_sqlalchemy import SQLAlchemy
import pymongo as pm
db = SQLAlchemy()


class MongoDB:
    def __init__(self, db_config=None):
        if db_config:
            self.client = pm.MongoClient(db_config['HOST'], db_config['PORT'])
        else:
            self.client = pm.MongoClient('localhost', 27017)

    def __del__(self):
        self.client.close()