(* Warning! This file is generated. Modify at your own risk. *)

(** Data definition for BigQuery API (v2).
  
  For more information about this data model, see the
  {{:https://code.google.com/apis/bigquery/docs/v2/}API Documentation}.
  *)

module TableReference :
sig
  type t = {
    datasetId : string;
    (** [Required] ID of the dataset containing the table. *)
    projectId : string;
    (** [Required] ID of the project billed for storage of the table. *)
    tableId : string;
    (** [Required] ID of the table. *)
    
  }
  
  val datasetId : (t, string) GapiLens.t
  val projectId : (t, string) GapiLens.t
  val tableId : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobConfigurationLink :
sig
  type t = {
    createDisposition : string;
    (** [Optional] Whether or not to create a new table, if none exists. *)
    destinationTable : TableReference.t;
    (** [Required] The destination table of the link job. *)
    sourceUri : string list;
    (** [Required] URI of source table to link. *)
    writeDisposition : string;
    (** [Optional] Whether to overwrite an existing table (WRITE_TRUNCATE), append to an existing table (WRITE_APPEND), or require that the the table is empty (WRITE_EMPTY). Default is WRITE_APPEND. *)
    
  }
  
  val createDisposition : (t, string) GapiLens.t
  val destinationTable : (t, TableReference.t) GapiLens.t
  val sourceUri : (t, string list) GapiLens.t
  val writeDisposition : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module ErrorProto :
sig
  type t = {
    debugInfo : string;
    (** Debugging information for the service, if present. Should be ignored. *)
    location : string;
    (** Specifies where the error occurred, if present. *)
    message : string;
    (** A human readable explanation of the error. *)
    reason : string;
    (** Specifies the error reason. For example, reason will be "required" or "invalid" if some field was missing or malformed. *)
    
  }
  
  val debugInfo : (t, string) GapiLens.t
  val location : (t, string) GapiLens.t
  val message : (t, string) GapiLens.t
  val reason : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobStatus :
sig
  type t = {
    errorResult : ErrorProto.t;
    (** [Output-only] Final error result of the job. If present, indicates that the job has completed and was unsuccessful. *)
    errors : ErrorProto.t list;
    (** [Output-only] All errors encountered during the running of the job. Errors here do not necessarily mean that the job has completed or was unsuccessful. *)
    state : string;
    (** [Output-only] Running state of the job. *)
    
  }
  
  val errorResult : (t, ErrorProto.t) GapiLens.t
  val errors : (t, ErrorProto.t list) GapiLens.t
  val state : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module TableRow :
sig
  module F :
  sig
    type t = {
      v : string;
      (** Contains the field value in this row, as a string. *)
      
    }
    
    val v : (t, string) GapiLens.t
    
    val empty : t
    
    val render : t -> GapiJson.json_data_model list
    
    val parse : t -> GapiJson.json_data_model -> t
    
  end
  
  type t = {
    f : F.t list;
    (** Represents a single row in the result set, consisting of one or more fields. *)
    
  }
  
  val f : (t, F.t list) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module TableDataList :
sig
  type t = {
    etag : string;
    (** A hash of this page of results. *)
    kind : string;
    (** The resource type of the response. *)
    pageToken : string;
    (** A token used for paging results. Providing this token instead of the startRow parameter can help you retrieve stable results when an underlying table is changing. *)
    rows : TableRow.t list;
    (** Rows of results. *)
    totalRows : int64;
    (** The total number of rows in the complete table. *)
    
  }
  
  val etag : (t, string) GapiLens.t
  val kind : (t, string) GapiLens.t
  val pageToken : (t, string) GapiLens.t
  val rows : (t, TableRow.t list) GapiLens.t
  val totalRows : (t, int64) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobStatistics :
sig
  type t = {
    endTime : int64;
    (** [Output-only] End time of this job, in milliseconds since the epoch. *)
    startTime : int64;
    (** [Output-only] Start time of this job, in milliseconds since the epoch. *)
    totalBytesProcessed : int64;
    (** [Output-only] Total bytes processed for this job. *)
    
  }
  
  val endTime : (t, int64) GapiLens.t
  val startTime : (t, int64) GapiLens.t
  val totalBytesProcessed : (t, int64) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobConfigurationProperties : module type of GapiJson.StringDictionary

module JobConfigurationTableCopy :
sig
  type t = {
    createDisposition : string;
    (** [Optional] Whether or not to create a new table, if none exists. *)
    destinationTable : TableReference.t;
    (** [Required] The destination table *)
    sourceTable : TableReference.t;
    (** [Required] Source table to copy. *)
    writeDisposition : string;
    (** [Optional] Whether or not to append or require the table to be empty. *)
    
  }
  
  val createDisposition : (t, string) GapiLens.t
  val destinationTable : (t, TableReference.t) GapiLens.t
  val sourceTable : (t, TableReference.t) GapiLens.t
  val writeDisposition : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobConfigurationExtract :
sig
  type t = {
    destinationUri : string;
    (** [Required] The fully-qualified Google Cloud Storage URI where the extracted table should be written. *)
    fieldDelimiter : string;
    (** [Optional] Delimiter to use between fields in the exported data. Default is ',' *)
    printHeader : bool;
    (** [Optional] Whether to print out a heder row in the results. Default is true. *)
    sourceTable : TableReference.t;
    (** [Required] A reference to the table being exported. *)
    
  }
  
  val destinationUri : (t, string) GapiLens.t
  val fieldDelimiter : (t, string) GapiLens.t
  val printHeader : (t, bool) GapiLens.t
  val sourceTable : (t, TableReference.t) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module TableFieldSchema :
sig
  type t = {
    fields : t list;
    (** [Optional] Describes nested fields when type is RECORD. *)
    mode : string;
    (** [Optional] Mode of the field (whether or not it can be null. Default is NULLABLE. *)
    name : string;
    (** [Required] Name of the field. *)
    _type : string;
    (** [Required] Data type of the field. *)
    
  }
  
  val fields : (t, t list) GapiLens.t
  val mode : (t, string) GapiLens.t
  val name : (t, string) GapiLens.t
  val _type : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module TableSchema :
sig
  type t = {
    fields : TableFieldSchema.t list;
    (** Describes the fields in a table. *)
    
  }
  
  val fields : (t, TableFieldSchema.t list) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobConfigurationLoad :
sig
  type t = {
    allowQuotedNewlines : bool;
    (** [Experimental] Whether to allow quoted newlines in the source CSV data. *)
    createDisposition : string;
    (** [Optional] Whether to create the table if it doesn't already exist (CREATE_IF_NEEDED) or to require the table already exist (CREATE_NEVER). Default is CREATE_IF_NEEDED. *)
    destinationTable : TableReference.t;
    (** [Required] Table being written to. *)
    encoding : string;
    (** [Optional] Character encoding of the input data. May be UTF-8 or ISO-8859-1. Default is UTF-8. *)
    fieldDelimiter : string;
    (** [Optional] Delimiter to use between fields in the import data. Default is ','. Note that delimiters are applied to the raw, binary data before the encoding is applied. *)
    maxBadRecords : int;
    (** [Optional] Maximum number of bad records that should be ignored before the entire job is aborted and no updates are performed. *)
    quote : string;
    (** [Optional] Quote character to use. Default is '"'. Note that quoting is done on the raw, binary data before the encoding is applied. *)
    schema : TableSchema.t;
    (** [Optional] Schema of the table being written to. *)
    schemaInline : string;
    (** [Experimental] Inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT" *)
    schemaInlineFormat : string;
    (** [Experimental] Format of inlineSchema field. *)
    skipLeadingRows : int;
    (** [Optional] Number of rows of initial data to skip in the data being imported. *)
    sourceUris : string list;
    (** [Required] Source URIs describing Google Cloud Storage locations of data to load. *)
    writeDisposition : string;
    (** [Optional] Whether to overwrite an existing table (WRITE_TRUNCATE), append to an existing table (WRITE_APPEND), or require that the the table is empty (WRITE_EMPTY). Default is WRITE_APPEND. *)
    
  }
  
  val allowQuotedNewlines : (t, bool) GapiLens.t
  val createDisposition : (t, string) GapiLens.t
  val destinationTable : (t, TableReference.t) GapiLens.t
  val encoding : (t, string) GapiLens.t
  val fieldDelimiter : (t, string) GapiLens.t
  val maxBadRecords : (t, int) GapiLens.t
  val quote : (t, string) GapiLens.t
  val schema : (t, TableSchema.t) GapiLens.t
  val schemaInline : (t, string) GapiLens.t
  val schemaInlineFormat : (t, string) GapiLens.t
  val skipLeadingRows : (t, int) GapiLens.t
  val sourceUris : (t, string list) GapiLens.t
  val writeDisposition : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module DatasetReference :
sig
  type t = {
    datasetId : string;
    (** [Required] A unique ID for this dataset, without the project name. *)
    projectId : string;
    (** [Optional] The ID of the container project. *)
    
  }
  
  val datasetId : (t, string) GapiLens.t
  val projectId : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobConfigurationQuery :
sig
  type t = {
    createDisposition : string;
    (** [Optional] Whether to create the table if it doesn't already exist (CREATE_IF_NEEDED) or to require the table already exist (CREATE_NEVER). Default is CREATE_IF_NEEDED. *)
    defaultDataset : DatasetReference.t;
    (** [Optional] Specifies the default dataset to assume for unqualified table names in the query. *)
    destinationTable : TableReference.t;
    (** [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. *)
    priority : string;
    (** [Optional] Specifies a priority for the query. Default is INTERACTIVE. Alternative is BATCH, which may be subject to looser quota restrictions. *)
    query : string;
    (** [Required] BigQuery SQL query to execute. *)
    writeDisposition : string;
    (** [Optional] Whether to overwrite an existing table (WRITE_TRUNCATE), append to an existing table (WRITE_APPEND), or require that the the table is empty (WRITE_EMPTY). Default is WRITE_EMPTY. *)
    
  }
  
  val createDisposition : (t, string) GapiLens.t
  val defaultDataset : (t, DatasetReference.t) GapiLens.t
  val destinationTable : (t, TableReference.t) GapiLens.t
  val priority : (t, string) GapiLens.t
  val query : (t, string) GapiLens.t
  val writeDisposition : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobConfiguration :
sig
  type t = {
    copy : JobConfigurationTableCopy.t;
    (** [Pick one] Copies a table. *)
    extract : JobConfigurationExtract.t;
    (** [Pick one] Configures an extract job. *)
    link : JobConfigurationLink.t;
    (** [Pick one] Configures a link job. *)
    load : JobConfigurationLoad.t;
    (** [Pick one] Configures a load job. *)
    properties : JobConfigurationProperties.t;
    (** [Optional] Properties providing extra details about how the job should be run. Not used for most jobs. *)
    query : JobConfigurationQuery.t;
    (** [Pick one] Configures a query job. *)
    
  }
  
  val copy : (t, JobConfigurationTableCopy.t) GapiLens.t
  val extract : (t, JobConfigurationExtract.t) GapiLens.t
  val link : (t, JobConfigurationLink.t) GapiLens.t
  val load : (t, JobConfigurationLoad.t) GapiLens.t
  val properties : (t, JobConfigurationProperties.t) GapiLens.t
  val query : (t, JobConfigurationQuery.t) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobReference :
sig
  type t = {
    jobId : string;
    (** [Required] ID of the job. *)
    projectId : string;
    (** [Required] Project ID being billed for the job. *)
    
  }
  
  val jobId : (t, string) GapiLens.t
  val projectId : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module Job :
sig
  type t = {
    configuration : JobConfiguration.t;
    (** [Required] Describes the job configuration. *)
    etag : string;
    (** [Output-only] A hash of this resource. *)
    id : string;
    (** [Output-only] Opaque ID field of the job *)
    jobReference : JobReference.t;
    (** [Optional] Reference describing the unique-per-user name of the job. *)
    kind : string;
    (** [Output-only] The type of the resource. *)
    selfLink : string;
    (** [Output-only] A URL that can be used to access this resource again. *)
    statistics : JobStatistics.t;
    (** [Output-only] Information about the job, including starting time and ending time of the job. *)
    status : JobStatus.t;
    (** [Output-only] The status of this job. Examine this value when polling an asynchronous job to see if the job is complete. *)
    
  }
  
  val configuration : (t, JobConfiguration.t) GapiLens.t
  val etag : (t, string) GapiLens.t
  val id : (t, string) GapiLens.t
  val jobReference : (t, JobReference.t) GapiLens.t
  val kind : (t, string) GapiLens.t
  val selfLink : (t, string) GapiLens.t
  val statistics : (t, JobStatistics.t) GapiLens.t
  val status : (t, JobStatus.t) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module ProjectReference :
sig
  type t = {
    projectId : string;
    (** [Required] ID of the project. Can be either the numeric ID or the assigned ID of the project. *)
    
  }
  
  val projectId : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module ProjectList :
sig
  module Projects :
  sig
    type t = {
      friendlyName : string;
      (** A descriptive name for this project. *)
      id : string;
      (** An opaque ID of this project. *)
      kind : string;
      (** The resource type. *)
      projectReference : ProjectReference.t;
      (** A unique reference to this project. *)
      
    }
    
    val friendlyName : (t, string) GapiLens.t
    val id : (t, string) GapiLens.t
    val kind : (t, string) GapiLens.t
    val projectReference : (t, ProjectReference.t) GapiLens.t
    
    val empty : t
    
    val render : t -> GapiJson.json_data_model list
    
    val parse : t -> GapiJson.json_data_model -> t
    
  end
  
  type t = {
    etag : string;
    (** A hash of the page of results *)
    kind : string;
    (** The type of list. *)
    nextPageToken : string;
    (** A token to request the next page of results. *)
    projects : Projects.t list;
    (** Projects to which you have at least READ access. *)
    totalItems : int;
    (** The total number of projects in the list. *)
    
  }
  
  val etag : (t, string) GapiLens.t
  val kind : (t, string) GapiLens.t
  val nextPageToken : (t, string) GapiLens.t
  val projects : (t, Projects.t list) GapiLens.t
  val totalItems : (t, int) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module JobList :
sig
  module Jobs :
  sig
    type t = {
      configuration : JobConfiguration.t;
      (** [Full-projection-only] Specifies the job configuration. *)
      errorResult : ErrorProto.t;
      (** A result object that will be present only if the job has failed. *)
      id : string;
      (** Unique opaque ID of the job. *)
      jobReference : JobReference.t;
      (** Job reference uniquely identifying the job. *)
      kind : string;
      (** The resource type. *)
      state : string;
      (** Running state of the job. When the state is DONE, errorResult can be checked to determine whether the job succeeded or failed. *)
      statistics : JobStatistics.t;
      (** [Output-only] Information about the job, including starting time and ending time of the job. *)
      status : JobStatus.t;
      (** [Full-projection-only] Describes the state of the job. *)
      
    }
    
    val configuration : (t, JobConfiguration.t) GapiLens.t
    val errorResult : (t, ErrorProto.t) GapiLens.t
    val id : (t, string) GapiLens.t
    val jobReference : (t, JobReference.t) GapiLens.t
    val kind : (t, string) GapiLens.t
    val state : (t, string) GapiLens.t
    val statistics : (t, JobStatistics.t) GapiLens.t
    val status : (t, JobStatus.t) GapiLens.t
    
    val empty : t
    
    val render : t -> GapiJson.json_data_model list
    
    val parse : t -> GapiJson.json_data_model -> t
    
  end
  
  type t = {
    etag : string;
    (** A hash of this page of results. *)
    jobs : Jobs.t list;
    (** List of jobs that were requested. *)
    kind : string;
    (** The resource type of the response. *)
    nextPageToken : string;
    (** A token to request the next page of results. *)
    totalItems : int;
    (** Total number of jobs in this collection. *)
    
  }
  
  val etag : (t, string) GapiLens.t
  val jobs : (t, Jobs.t list) GapiLens.t
  val kind : (t, string) GapiLens.t
  val nextPageToken : (t, string) GapiLens.t
  val totalItems : (t, int) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module Table :
sig
  type t = {
    creationTime : int64;
    (** [Output-only] The time when this table was created, in milliseconds since the epoch. *)
    description : string;
    (** [Optional] A user-friendly description of this table. *)
    etag : string;
    (** [Output-only] A hash of this resource. *)
    expirationTime : int64;
    (** [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. *)
    friendlyName : string;
    (** [Optional] A descriptive name for this table. *)
    id : string;
    (** [Output-only] An opaque ID uniquely identifying the table. *)
    kind : string;
    (** [Output-only] The type of the resource. *)
    lastModifiedTime : int64;
    (** [Output-only] The time when this table was last modified, in milliseconds since the epoch. *)
    numBytes : int64;
    (** [Output-only] The size of the table in bytes. *)
    numRows : string;
    (** [Output-only] The number of rows of data in this table. *)
    schema : TableSchema.t;
    (** [Optional] Describes the schema of this table. *)
    selfLink : string;
    (** [Output-only] A URL that can be used to access this resource again. *)
    tableReference : TableReference.t;
    (** [Required] Reference describing the ID of this table. *)
    
  }
  
  val creationTime : (t, int64) GapiLens.t
  val description : (t, string) GapiLens.t
  val etag : (t, string) GapiLens.t
  val expirationTime : (t, int64) GapiLens.t
  val friendlyName : (t, string) GapiLens.t
  val id : (t, string) GapiLens.t
  val kind : (t, string) GapiLens.t
  val lastModifiedTime : (t, int64) GapiLens.t
  val numBytes : (t, int64) GapiLens.t
  val numRows : (t, string) GapiLens.t
  val schema : (t, TableSchema.t) GapiLens.t
  val selfLink : (t, string) GapiLens.t
  val tableReference : (t, TableReference.t) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module DatasetList :
sig
  module Datasets :
  sig
    type t = {
      datasetReference : DatasetReference.t;
      (** Reference identifying dataset. *)
      friendlyName : string;
      (** A descriptive name for this dataset, if one exists. *)
      id : string;
      (** The fully-qualified unique name of this dataset in the format projectId:datasetId. *)
      kind : string;
      (** The resource type. *)
      
    }
    
    val datasetReference : (t, DatasetReference.t) GapiLens.t
    val friendlyName : (t, string) GapiLens.t
    val id : (t, string) GapiLens.t
    val kind : (t, string) GapiLens.t
    
    val empty : t
    
    val render : t -> GapiJson.json_data_model list
    
    val parse : t -> GapiJson.json_data_model -> t
    
  end
  
  type t = {
    datasets : Datasets.t list;
    (** An array of one or more summarized dataset resources. Absent when there are no datasets in the specified project. *)
    etag : string;
    (** A hash of this page of results. See Paging Through Results in the developer's guide. *)
    kind : string;
    (** The type of list. *)
    nextPageToken : string;
    (** A token to request the next page of results. Present only when there is more than one page of results.* See Paging Through Results in the developer's guide. *)
    
  }
  
  val datasets : (t, Datasets.t list) GapiLens.t
  val etag : (t, string) GapiLens.t
  val kind : (t, string) GapiLens.t
  val nextPageToken : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module GetQueryResultsResponse :
sig
  type t = {
    etag : string;
    (** A hash of this response. *)
    jobComplete : bool;
    (** Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available. *)
    jobReference : JobReference.t;
    (** Reference to the BigQuery Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults). *)
    kind : string;
    (** The resource type of the response. *)
    rows : TableRow.t list;
    (** An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. Present only when the query completes successfully. *)
    schema : TableSchema.t;
    (** The schema of the results. Present only when the query completes successfully. *)
    totalRows : string;
    (** The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. Present only when the query completes successfully. *)
    
  }
  
  val etag : (t, string) GapiLens.t
  val jobComplete : (t, bool) GapiLens.t
  val jobReference : (t, JobReference.t) GapiLens.t
  val kind : (t, string) GapiLens.t
  val rows : (t, TableRow.t list) GapiLens.t
  val schema : (t, TableSchema.t) GapiLens.t
  val totalRows : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module QueryRequest :
sig
  type t = {
    defaultDataset : DatasetReference.t;
    (** [Optional] Specifies the default datasetId and projectId to assume for any unqualified table names in the query. If not set, all table names in the query string must be fully-qualified in the format projectId:datasetId.tableid. *)
    dryRun : bool;
    (** [Optional] If set, don't actually run the query. A valid query will return an empty response, while an invalid query will return the same error it would if it wasn't a dry run. *)
    kind : string;
    (** The resource type of the request. *)
    maxResults : int;
    (** [Optional] The maximum number of results to return per page of results. If the response list exceeds the maximum response size for a single response, you will have to page through the results. Default is to return the maximum response size. *)
    query : string;
    (** [Required] A query string, following the BigQuery query syntax of the query to execute. Table names should be qualified by dataset name in the format projectId:datasetId.tableId unless you specify the defaultDataset value. If the table is in the same project as the job, you can omit the project ID. Example: SELECT f1 FROM myProjectId:myDatasetId.myTableId. *)
    timeoutMs : int;
    (** [Optional] How long to wait for the query to complete, in milliseconds, before returning. Default is to return immediately. If the timeout passes before the job completes, the request will fail with a TIMEOUT error. *)
    
  }
  
  val defaultDataset : (t, DatasetReference.t) GapiLens.t
  val dryRun : (t, bool) GapiLens.t
  val kind : (t, string) GapiLens.t
  val maxResults : (t, int) GapiLens.t
  val query : (t, string) GapiLens.t
  val timeoutMs : (t, int) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module TableList :
sig
  module Tables :
  sig
    type t = {
      friendlyName : string;
      (** The user-friendly name for this table. *)
      id : string;
      (** An opaque ID of the table *)
      kind : string;
      (** The resource type. *)
      tableReference : TableReference.t;
      (** A reference uniquely identifying the table. *)
      
    }
    
    val friendlyName : (t, string) GapiLens.t
    val id : (t, string) GapiLens.t
    val kind : (t, string) GapiLens.t
    val tableReference : (t, TableReference.t) GapiLens.t
    
    val empty : t
    
    val render : t -> GapiJson.json_data_model list
    
    val parse : t -> GapiJson.json_data_model -> t
    
  end
  
  type t = {
    etag : string;
    (** A hash of this page of results. *)
    kind : string;
    (** The type of list. *)
    nextPageToken : string;
    (** A token to request the next page of results. *)
    tables : Tables.t list;
    (** Tables in the requested dataset. *)
    totalItems : int;
    (** The total number of tables in the dataset. *)
    
  }
  
  val etag : (t, string) GapiLens.t
  val kind : (t, string) GapiLens.t
  val nextPageToken : (t, string) GapiLens.t
  val tables : (t, Tables.t list) GapiLens.t
  val totalItems : (t, int) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module Dataset :
sig
  module Access :
  sig
    type t = {
      domain : string;
      (** [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". *)
      groupByEmail : string;
      (** [Pick one] A fully-qualified email address of a mailing list to grant access to. This must be either a Google Groups mailing list (ends in @googlegroups.com) or a group managed by an enterprise version of Google Groups. *)
      role : string;
      (** [Required] Describes the rights granted to the user specified by the other member of the access object. The following string values are supported: READ - User can call any list() or get() method on any collection or resource. WRITE - User can call any method on any collection except for datasets, on which they can call list() and get(). OWNER - User can call any method. The dataset creator is granted this role by default. *)
      specialGroup : string;
      (** [Pick one] A special group to grant access to. The valid values are: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. *)
      userByEmail : string;
      (** [Pick one] A fully qualified email address of a user to grant access to. For example: fred@example.com. *)
      
    }
    
    val domain : (t, string) GapiLens.t
    val groupByEmail : (t, string) GapiLens.t
    val role : (t, string) GapiLens.t
    val specialGroup : (t, string) GapiLens.t
    val userByEmail : (t, string) GapiLens.t
    
    val empty : t
    
    val render : t -> GapiJson.json_data_model list
    
    val parse : t -> GapiJson.json_data_model -> t
    
  end
  
  type t = {
    access : Access.t list;
    (** [Optional] Describes users' rights on the dataset. You can assign the same role to multiple users, and assign multiple roles to the same user.
Default values assigned to a new dataset are as follows: OWNER - Project owners, dataset creator READ - Project readers WRITE - Project writers
See ACLs and Rights for a description of these rights. If you specify any of these roles when creating a dataset, the assigned roles will overwrite the defaults listed above.
To revoke rights to a dataset, call datasets.update() and omit the names of anyone whose rights you wish to revoke. However, every dataset must have at least one entity granted OWNER role.
Each access object can have only one of the following members: userByEmail, groupByEmail, domain, or allAuthenticatedUsers. *)
    creationTime : int64;
    (** [Output-only] The time when this dataset was created, in milliseconds since the epoch. *)
    datasetReference : DatasetReference.t;
    (** [Required] Reference identifying dataset. *)
    description : string;
    (** [Optional] A user-friendly string description for the dataset. This might be shown in BigQuery UI for browsing the dataset. *)
    etag : string;
    (** [Output-only] A hash of this resource. *)
    friendlyName : string;
    (** [Optional] A descriptive name for this dataset, which might be shown in any BigQuery user interfaces for browsing the dataset. Use datasetId for making API calls. *)
    id : string;
    (** [Output-only] The fully-qualified unique name of this dataset in the format projectId:datasetId. The dataset name without the project name is given in the datasetId field. When creating a new dataset, leave this field blank, and instead specify the datasetId field. *)
    kind : string;
    (** [Output-only] The resource type. *)
    lastModifiedTime : int64;
    (** [Output-only] The date when this dataset or any of its tables was last modified, in milliseconds since the epoch. *)
    selfLink : string;
    (** [Output-only] An URL that can be used to access this resource again. You can use this URL in Get or Update requests to this resource. *)
    
  }
  
  val access : (t, Access.t list) GapiLens.t
  val creationTime : (t, int64) GapiLens.t
  val datasetReference : (t, DatasetReference.t) GapiLens.t
  val description : (t, string) GapiLens.t
  val etag : (t, string) GapiLens.t
  val friendlyName : (t, string) GapiLens.t
  val id : (t, string) GapiLens.t
  val kind : (t, string) GapiLens.t
  val lastModifiedTime : (t, int64) GapiLens.t
  val selfLink : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

module QueryResponse :
sig
  type t = {
    jobComplete : bool;
    (** Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available. *)
    jobReference : JobReference.t;
    (** Reference to the Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults). *)
    kind : string;
    (** The resource type. *)
    rows : TableRow.t list;
    (** An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. *)
    schema : TableSchema.t;
    (** The schema of the results. Present only when the query completes successfully. *)
    totalRows : string;
    (** The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. *)
    
  }
  
  val jobComplete : (t, bool) GapiLens.t
  val jobReference : (t, JobReference.t) GapiLens.t
  val kind : (t, string) GapiLens.t
  val rows : (t, TableRow.t list) GapiLens.t
  val schema : (t, TableSchema.t) GapiLens.t
  val totalRows : (t, string) GapiLens.t
  
  val empty : t
  
  val render : t -> GapiJson.json_data_model list
  
  val parse : t -> GapiJson.json_data_model -> t
  
  val to_data_model : t -> GapiJson.json_data_model
  
  val of_data_model : GapiJson.json_data_model -> t
  
end

