import sys
import logging

# create new logger template for project
logger = logging.getLogger("bootstrap")

# during active development, accept DEBUG level logs
# see: https://sematext.com/blog/logging-levels/
logger.setLevel(logging.DEBUG)

# output DEBUG messages to standard output
stdout_handler = logging.StreamHandler(stream=sys.stdout)

# output errors to a file
error_handler = logging.FileHandler("error.log")

# set the log levels on the handlers
stdout_handler.setLevel(logging.DEBUG)
error_handler.setLevel(logging.ERROR)

# create a log format using Log Record attributes
# https://docs.python.org/3/library/logging.html#logrecord-attributes
log_format = logging.Formatter(
    f"{asctime}s | {levelname}s | {message}s"
)

# set the log format on each handler
stdout_handler.setFormatter(log_format)
error_handler.setFormatter(log_format)

# add each handler to the Logger object
logger.addHandler(stdout_handler)
logger.addHandler(error_handler)