#!/usr/bin/env python
# coding: utf-8

from diagrams import Diagram
from diagrams.gcp.analytics import BigQuery
from diagrams.gcp.compute import AppEngine
from diagrams.gcp.database import Datastore


def main():
    with Diagram("sample", show=False):
        AppEngine("appengine") >> Datastore("datastore") >> BigQuery("bigquery")


if __name__ == '__main__':
    main()
