# Compute variable bitrate (VBR) Mp3 duration in Elixir

## Demo

Note: I couldn't find a VBR file online, so this only shows it working on a constant bitrate file.

```bash
$ iex -S mix
Erlang/OTP 20 [erts-9.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Compiling 1 file (.ex)
Interactive Elixir (1.6.4) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> {:ok, resp} =  HTTPoison.get("http://s3.amazonaws.com/thinkrelevance-podcast/ThinkRelevance-014-rich-hickey.mp3")                       
{:ok,
 %HTTPoison.Response{
   body: <<73, 68, 51, 3, 0, 0, 0, 1, 103, 68, 84, 65, 76, 66, 0, 0, 0, 57, 0,
     0, 1, 255, 254, 84, 0, 104, 0, 105, 0, 110, 0, 107, 0, 82, 0, 101, 0, 108,
     0, 101, 0, 118, 0, 97, 0, 110, 0, ...>>,
   headers: [
     {"x-amz-id-2",
      "DQkXKn5BUj2VNW2e1fpxhL/iZ8u6/rDrguDhgAHQQ8iAtBODx6nKXciLoT4ZUaehBFNSSF7m+Wc="},
     {"x-amz-request-id", "80FC4C1A274BC889"},
     {"Date", "Sat, 31 Mar 2018 21:49:16 GMT"},
     {"Last-Modified", "Sat, 28 Jul 2012 17:17:25 GMT"},
     {"ETag", "\"f1bcb7cb764ce1c562c58bba98219bce\""},
     {"Accept-Ranges", "bytes"},
     {"Content-Type", "audio/mpeg"},
     {"Content-Length", "27822386"},
     {"Server", "AmazonS3"}
   ], 
   request_url: "http://s3.amazonaws.com/thinkrelevance-podcast/ThinkRelevance-014-rich-hickey.mp3",
   status_code: 200
 }}
iex(2)> resp |> Map.get(:body) |> Mp3Info.duration
1737.064
```


# LICENCE

Copyright (c) Dieter Komendera and contributors 
Distributed under the Eclipse Public License 1.0.
