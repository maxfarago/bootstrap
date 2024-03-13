import sys
import logging

# create new logger template for project
logger = logging.getLogger("bootstrap")

# during active development, accept DEBUG level logs
# see: https://sematext.com/blog/logging-levels/
logger.setLevel(logging.DEBUG)

# output logs of level DEBUG and up to standard output
stdout_handler = logging.StreamHandler(stream=sys.stdout)

# output logs of ERROR level to disk
error_handler = logging.FileHandler("error.log")

# set the log levels on the handlers
stdout_handler.setLevel(logging.DEBUG)
error_handler.setLevel(logging.ERROR)

# create a log format using Log Record attributes
# https://docs.python.org/3/library/logging.html#logrecord-attributes
log_format = logging.Formatter("%(asctime)s | %(levelname)s | %(message)s")

# set the log format on each handler
stdout_handler.setFormatter(log_format)
error_handler.setFormatter(log_format)

# add each handler to the Logger object
logger.addHandler(stdout_handler)
logger.addHandler(error_handler)
