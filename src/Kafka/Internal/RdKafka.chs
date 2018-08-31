{-# LANGUAGE ForeignFunctionInterface #-}

module Kafka.Internal.RdKafka
  (
  ) where

import Foreign ()
import Foreign.C.Error ()
import Foreign.C.String ()
import Foreign.C.Types (CFile, CSize)
import System.IO ()
import System.Posix.IO ()
import System.Posix.Types ()

#include <librdkafka/rdkafka.h>

type CInt64T = {# type int64_t #}
type CInt32T = {# type int32_t #}

{# pointer *FILE   as CFilePtr -> CFile #}
{# pointer *size_t as CSizePtr -> CSize #}

{# enum rd_kafka_type_t     as ^ {underscoreToCase} deriving (Show, Eq) #}
{# enum rd_kafka_conf_res_t as ^ {underscoreToCase} deriving (Show, Eq) #}
{# enum rd_kafka_resp_err_t as ^ {underscoreToCase} deriving (Show, Eq) #}
{# enum rd_kafka_timestamp_type_t as ^ {underscoreToCase} deriving (Show, Eq) #}

rdKafkaMsgFlagFree, rdKafkaMsgFlagCopy :: Int
rdKafkaMsgFlagFree = 0x1; rdKafkaMsgFlagCopy = 0x2;

-- Number of bytes allocated from an error buffer
nErrorBytes :: Int; nErrorBytes = 1024 * 8;

-- helper functions
{# fun pure rd_kafka_version     as ^ {} -> `Int' #}
{# fun pure rd_kafka_version_str as ^ {} -> `String' #}
{# fun pure rd_kafka_err2str     as ^ {enumToCInt `RdKafkaRespErrT'} -> `String' #}
{# fun pure rd_kafka_err2name    as ^ {enumToCInt `RdKafkaRespErrT'} -> `String' #}
{# fun pure rd_kafka_errno2err   as ^ {`Int'} -> `RdKafkaRespErrT' cIntToEnum #}


