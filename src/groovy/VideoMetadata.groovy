class VideoMetadata {
  long duration
  boolean hasVideo

  public boolean equals(Object argo) {
    if (!(argo instanceof VideoMetadata)) return false
    VideoMetadata rhs = (VideoMetadata)argo
    return rhs.duration == duration && rhs.hasVideo == hasVideo
  }

  /**
   * Extract playtime from ffprobe output string.
   *
   * Requires whitespace after last part of seconds.
   *
   * @param outStr
   * @return playtime in seconds, or -1 if not in string
   */
  static long getPlaytimeFromString(String outStr) {
    def tokens = []
    outStr.splitEachLine(": ,\n") { line ->
      List list = line.toString().tokenize(": ,")
      list.each { item -> tokens << item }
    }

    int i
    int count = tokens.size()
    for (i = 0; i < count; i++) {
      if (tokens[i].toString().contains("Duration")) {
        break
      }
    }
    if (i>=count) return -1;	// can't find Duration

    long res = tokens[i + 1].toString().toInteger() * 3600 + tokens[i + 2].toString().toInteger() * 60 + tokens[i + 3].toString().toFloat()
    return res
  }

  /**
   * Check if a video stream is present.
   *
   * @param outStr
   * @return true if a video stream is present
   */
   static boolean hasVideoStream(String outStr) {
     return outStr =~ /Stream #\d+:\d+.*:\s*Video:/
   }
}
