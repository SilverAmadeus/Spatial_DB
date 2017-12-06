#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import tweepy
from tweepy import Stream
from tweepy import OAuthHandler
from tweepy.streaming import StreamListener
import time
import argparse
import string
import json
import os
import pickle
import pandas as pd
import numpy as np

verbose = lambda *a: None
keepcharacters = (' ','.','_')
if __name__ == '__main__':
    # Command line options
    p = argparse.ArgumentParser("Twitter search")
    p.add_argument("-q", "--query", dest="query",nargs="+",
                    help="Query/Filter",default='#ironia')
    p.add_argument("-l", "--lang", dest="lang",
                    help="Language",default='es')
    p.add_argument("-i","--items",dest="nitems",type=int,

                   help="Maximum number of tweets to recover", default=1000)
    p.add_argument("-d","--output-dir",dest="output_dir",
                   help="Output/Data Directory", default='.')
    p.add_argument("-v", "--verbose",
            action="store_true", dest="verbose",
            help="Modo verbose [Off]")
    p.add_argument('--version', action='version', version='create_segments 0.1')
    opts = p.parse_args()

    # Prepara función de verbose  -----------------------------------------
    if opts.verbose:
        def verbose(*args,**kargs):
            print(*args,**kargs)
    else:
        verbose = lambda *a: None

    query_="".join(c for c in opts.query if c.isalnum() or c in keepcharacters).rstrip()
    #outfile=os.path.join(opts.output_dir,"results_"+opts.lang+"_"+query_+".txt")
    #verbose("Output file set to:", outfile)

    CONSUMER_KEY = "X1lcIncgEQMmaWcX2G03S0wDK"
    CONSUMER_SECRET = "0tn6AqfDi6QR3toxkdKX8DR97EPNM6Df4aW7KWWHLNNRBQPOdU"
    ACCESS_TOKEN = "862671876-RPAO8DRFBLcVktZlOt8DtUOQGm5heObwTj9FayA8"
    ACCESS_TOKEN_SECRET = "HADKAJRIfMUFkNgJ0FFnHL9JR10mipFVBy719LfoFQFwQ"


    auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
    auth.set_access_token(ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
    api = tweepy.API(auth)
    tweet_supreme = []

    #with open(outfile, 'a') as f:
    for tweet in tweepy.Cursor(api.search,
                       q = [x for x in opts.query],
                       rpp=100,
                       result_type="recent",
                       #place_type='city',
                       languages=[opts.lang],
                       geocode="19.4326068,-99.135399,30km").items(opts.nitems):
        if tweet.place != None:
            tweet_list = []
            jtweet = json.loads(json.dumps(tweet._json))
            a =jtweet['user']['screen_name']
            b= jtweet['text']
            c = jtweet['place']['bounding_box']['coordinates'][0][0][0]
            d = jtweet['place']['bounding_box']['coordinates'][0][0][1]
            print(b+'\n')
            tweet_list.append(a)
            tweet_list.append(b)
            tweet_list.append(c)
            tweet_list.append(d)
            tweet_supreme.append(tweet_list)
    #tweet_supreme = np.array(tweet_supreme)
    df = pd.DataFrame(data=tweet_supreme,columns=['USER','TWEET','LAT','LONG'])
    tweetFile = open("results.txt","wb")
    pickle.dump(df, tweetFile)
    df.to_csv('results_'+query_+'.csv',sep='|')
