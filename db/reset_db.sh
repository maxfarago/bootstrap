#!/bin/sh

psql -f _0_setup.sql
psql -d bootstrap -f _1_build.sql
psql -d bootstrap -f _2_seed.sql