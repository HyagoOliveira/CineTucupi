package com.multimidia

class Movie {

    static transients = ["theFile"]

    static mapping = {
        version false
        key column: 'video_key'
    }

    static final String STATUS_BLANK = "blank"
    static final String STATUS_REMOVED = "removed"
    static final String STATUS_NEW = "new"
    static final String STATUS_INPROGRESS = "inprogress"
    static final String STATUS_CONVERTED = "converted"
    static final String STATUS_FAILED = "failed"

    String url                 //url to the content source
    String title               //title of the content
    String fileName            //name of the file
    String description         //description of the content or abstract. should be short
    byte[] theFile             //binary data for the file
    Long fileSize                  //fileSize of content in bytes
    Date createDate            //date the content was created
    String createdBy           //the name of the person who created the content
    String pathFlv             //path to the converted file
    String pathThumb           //the path to the thumb file - jpg
    String pathMaster          //path to the digital master movie - i.e, mpeg, mov, etc...
    String contentType          //the content type of the movie - usually flv
    String contentTypeMaster   //the content type of the digital master movie
    Long playTime              //duration of the movie in number of seconds

    //unique key for the filenames on the file system
    String key = new UUID(System.currentTimeMillis(),
            System.currentTimeMillis()*System.currentTimeMillis()).toString()

    String status = STATUS_BLANK

    static constraints = {
        url(nullable:true)
        title(nullable:true)
        fileName(nullable:true)
        description(nullable:true)
        contentType(nullable:true)
        contentTypeMaster(nullable:true)
        theFile(nullable:true)
        pathFlv(nullable:true)
        pathMaster(nullable:true)
        pathThumb(nullable:true)
        fileSize(nullable:true)
        createDate(nullable:true)
        createdBy(nullable:true)
        playTime(nullable:true)
    }

    void newFile(File masterFile) {
        //get the submitted file
        pathMaster = masterFile.canonicalPath
        fileSize = masterFile.length()
        status = STATUS_NEW
    }
}
