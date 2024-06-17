.class public final Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;
.super Lcom/motorola/camera/fsm/camera/states/modes/AbstractModeStates;
.source "SourceFile"


# static fields
.field public static final CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMELAPSE_POSTPROCESS_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->VIDEO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->IDLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PREPARE_CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_TONE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_CAPTURE_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SETUP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PAUSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PAUSED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESUMING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SNAPSHOT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->COPY_PREVIEW:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4, v5}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v4, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v4, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->STOPPING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_STREAMING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW_RESULT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->EXIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TIMELAPSE_PROCESSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TIMELAPSE_PROCESSING_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SUPER_SLOW_MOTION_PROCESSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_TIMER:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_PREPARE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_PAUSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_PAUSED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_RESUME:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_RECORDING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_STOP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static configureCaptureStates(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 65

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA17;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    sget-object v7, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v9, "ENABLE_VSTAB_STOP_DETECTION"

    invoke-direct {v7, v8, v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const-string v7, "VIDEO_START_FAILURE"

    const/4 v10, 0x0

    invoke-direct {v4, v8, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitAfterFireChange(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0xb

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    invoke-direct {v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA6;)V

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    invoke-direct {v12, v13, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v13}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "HISTORY_STATE"

    invoke-direct {v5, v12, v15, v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v16, v3

    const/16 v3, 0x15

    move-object/from16 v17, v5

    const/4 v5, 0x1

    invoke-direct {v14, v3, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->AF_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    const/16 v14, 0xa

    invoke-direct {v3, v5, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BATTERY_LOW:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CODEC_LOW:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CURRENT_MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STORAGE_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    move-object/from16 v18, v7

    const/16 v7, 0x16

    invoke-direct {v14, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v14}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v20, v5

    const/4 v5, 0x6

    invoke-direct {v4, v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;-><init>()V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PREPARED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v21, v4

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v22, v12

    const-string v12, "RECORDING_ERROR"

    move-object/from16 v23, v15

    const/4 v15, 0x1

    invoke-direct {v4, v8, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v4, v11}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v15, 0x0

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v15, 0x6

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0x16

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x3

    invoke-direct {v13, v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v15, "VIDEO_RESTART"

    move-object/from16 v24, v11

    const/4 v11, 0x1

    invoke-direct {v13, v8, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TONE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0xb

    move-object/from16 v25, v6

    const/4 v6, 0x1

    invoke-direct {v11, v13, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    move-object/from16 v26, v4

    const/16 v4, 0x16

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0xb

    move-object/from16 v27, v14

    const/4 v14, 0x0

    invoke-direct {v4, v13, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x3

    invoke-direct {v11, v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v11, v8, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_CAPTURE_VIDEO_REQUESTS:Ljava/util/List;

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(ILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA8;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;-><init>()V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STARTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v28, v6

    const/4 v6, 0x1

    invoke-direct {v14, v8, v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0x16

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x3

    invoke-direct {v13, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v13, v8, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v13, 0x18

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;

    const/4 v13, 0x0

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v13, "VIDEO_RECORDING"

    invoke-direct {v6, v8, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA5;)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v14, 0x3

    invoke-direct {v13, v6, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v13, v8, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    move-object/from16 v29, v6

    const/4 v6, 0x0

    invoke-direct {v14, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA5;)V

    invoke-virtual {v3, v14}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v14, 0x3

    invoke-direct {v6, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v2, v3, v13, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v6, v8, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    move-object/from16 v30, v13

    const/4 v13, 0x0

    invoke-direct {v14, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA5;)V

    invoke-virtual {v3, v14}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v14, 0x3

    invoke-direct {v13, v6, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v13, v8, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v31, v6

    const/4 v6, 0x1

    move-object/from16 v32, v13

    const/16 v13, 0x18

    invoke-direct {v14, v13, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v14}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v14, "CLOSE_ON_STOP"

    move-object/from16 v33, v4

    const/4 v4, 0x0

    invoke-direct {v13, v8, v14, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v13, "FINISH_APP"

    move-object/from16 v34, v5

    const/4 v5, 0x1

    invoke-direct {v4, v8, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v35, v13

    const/4 v13, 0x2

    invoke-direct {v4, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v36, v12

    const/4 v12, 0x1

    invoke-direct {v13, v8, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v12, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_PAUSE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v37, v6

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-object/from16 v38, v12

    const/4 v12, 0x6

    invoke-direct {v13, v6, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    move-object/from16 v39, v6

    const/4 v6, 0x0

    invoke-direct {v13, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA1;)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    move-object/from16 v40, v13

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    invoke-direct {v13, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA3;)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v41, v13

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    move-object/from16 v42, v6

    const/4 v6, 0x1

    invoke-direct {v13, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v13, v8, v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP_CLI_DISPLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v43, v13

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v44, v12

    const/16 v12, 0x11

    invoke-direct {v13, v12, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v12, v8, v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v12, 0x16

    invoke-direct {v6, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x3

    invoke-direct {v12, v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v8, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_THERMAL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0x17

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v13, 0x6

    move-object/from16 v45, v9

    move-object/from16 v9, v27

    invoke-direct {v12, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA1;)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const-string v13, "SURFACE"

    move-object/from16 v27, v6

    const/4 v6, 0x0

    invoke-direct {v12, v8, v13, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(Z)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v46, v12

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    move-object/from16 v47, v13

    const/16 v13, 0x10

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v11}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v48, v10

    const/4 v10, 0x0

    move-object/from16 v49, v6

    move-object/from16 v6, v22

    move-object/from16 v22, v5

    move-object/from16 v5, v23

    invoke-direct {v12, v6, v5, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0x9

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v5, "OPEN_CAMERA_ERROR"

    move-object/from16 v50, v6

    const/4 v6, 0x1

    invoke-direct {v13, v8, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v6, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v51, v7

    const/4 v7, 0x1

    invoke-direct {v13, v8, v14, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v13, 0x13

    invoke-direct {v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;-><init>()V

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v7, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v7, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v52, v13

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v53, v11

    const/4 v11, 0x0

    move-object/from16 v54, v10

    const/4 v10, 0x1

    invoke-direct {v13, v8, v5, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v13, 0x16

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v8, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v7, v10}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v55, v5

    const/4 v5, 0x0

    invoke-direct {v13, v8, v14, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0xe

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x0

    move-object/from16 v56, v10

    move-object/from16 v10, v36

    invoke-direct {v11, v8, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v5, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v36, v7

    const/4 v7, 0x0

    invoke-direct {v13, v8, v14, v7, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0xf

    invoke-direct {v7, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v7}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v8, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v24

    invoke-virtual {v5, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    move-object/from16 v24, v3

    const/4 v3, 0x0

    invoke-direct {v13, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v13, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v3}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    filled-new-array {v9}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v11

    const/16 v13, 0x9

    invoke-direct {v3, v11, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v5, v3}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-direct {v5, v8, v15, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    move-object/from16 v5, v20

    invoke-static {v2, v3, v12, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v1, v8, v14, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v0, 0x18

    invoke-direct {v1, v0, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v1, 0xc

    const/4 v13, 0x1

    invoke-direct {v0, v1, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v0, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x0

    invoke-direct {v1, v8, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_DATA_CLEAR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v20, v4

    const-string v4, "EVENT_TRIGGER"

    move-object/from16 v57, v5

    const/4 v5, 0x1

    invoke-direct {v1, v11, v4, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v14, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x18

    invoke-direct {v4, v13, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0xc

    invoke-direct {v4, v13, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v4, v8, v10, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v8, v14, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x18

    move-object/from16 v58, v3

    const/4 v3, 0x1

    invoke-direct {v5, v13, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v10, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v5, 0x1

    const/4 v13, 0x0

    invoke-direct {v4, v8, v14, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v5, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v5, v8, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v13, 0x13

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    move-object/from16 v4, v34

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v13, 0x0

    invoke-direct {v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v13, 0x6

    invoke-direct {v7, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v7, 0x1

    const/4 v13, 0x0

    invoke-direct {v5, v8, v15, v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    move-object/from16 v5, v57

    invoke-static {v2, v0, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v12

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v12, v8, v14, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v13, 0x1

    move-object/from16 v57, v9

    const/16 v9, 0xc

    invoke-direct {v12, v9, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v8, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v8, v14, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0xc

    invoke-direct {v9, v13, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v12, 0x1

    invoke-direct {v9, v8, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v9, v8, v14, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    move-object/from16 v9, v20

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v20, v7

    const/4 v7, 0x1

    invoke-direct {v13, v8, v14, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    move-object/from16 v59, v10

    move-object/from16 v10, v22

    invoke-direct {v7, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_PREVIEW_REQUESTS:Ljava/util/List;

    move-object/from16 v22, v4

    const/4 v4, 0x1

    invoke-direct {v12, v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;-><init>()V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v12, v33

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v33, v15

    invoke-static {v4, v13}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v60, v13

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v61, v1

    const/4 v1, 0x1

    move-object/from16 v62, v11

    const/16 v11, 0x15

    invoke-direct {v13, v11, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->AF_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    const/16 v13, 0xa

    invoke-direct {v1, v11, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v1, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v15, 0x0

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v13, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v11, v28

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v15, 0x0

    move-object/from16 v28, v4

    const/4 v4, 0x1

    invoke-direct {v13, v8, v14, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;-><init>()V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v15, 0xc

    invoke-direct {v13, v15, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    move-object/from16 v4, v24

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v15, 0x0

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v15, 0x13

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v15, 0x0

    move-object/from16 v24, v11

    const/4 v11, 0x1

    invoke-direct {v13, v8, v14, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;-><init>()V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v13, v8, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v13, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0xf

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v13, "OPEN_AFTER_CLOSE"

    const/4 v15, 0x1

    move-object/from16 v63, v5

    move-object/from16 v5, v62

    invoke-direct {v11, v5, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v11, v54

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v5, 0x0

    invoke-direct {v15, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v5, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v13, v61

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ACTIVITY_LAUNCHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v15}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v15}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v36, v12

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    move-object/from16 v54, v8

    const/4 v8, 0x0

    invoke-direct {v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v12, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;-><init>()V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PHOTOS_STABILIZE_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v15, 0x0

    invoke-direct {v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v12, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SLOW_MOTION_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>()V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v15, 0x0

    invoke-direct {v8, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VSTAB_STOP_DETECTION_ON:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VSTAB_STOP_DETECTION_OFF:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v4, v38

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;-><init>(Z)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PAUSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-static {v4, v6, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v38, v5

    const/4 v5, 0x1

    move-object/from16 v51, v3

    move-object/from16 v3, v54

    invoke-direct {v15, v3, v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v15, 0x13

    invoke-direct {v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v12, 0x18

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;

    const/4 v12, 0x0

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v5, v29

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v12, v32

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v15, v30

    invoke-virtual {v4, v15}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v5, v31

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v12, 0x5

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v5, v49

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    const/4 v5, 0x1

    invoke-direct {v12, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(Z)V

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v5, v37

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v30, v9

    const/4 v9, 0x1

    invoke-direct {v13, v3, v14, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v9, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-static {v0, v4, v6, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v9, v3, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v13, 0x13

    invoke-direct {v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v9, 0x6

    move-object/from16 v13, v39

    invoke-direct {v5, v13, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    move-object/from16 v5, v44

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v9, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA1;)V

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v40

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v5, v42

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v13, v41

    invoke-virtual {v4, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    move-object/from16 v39, v10

    const/4 v10, 0x1

    invoke-direct {v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v4, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v13, v43

    invoke-virtual {v4, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v40, v15

    const/16 v15, 0x11

    invoke-direct {v13, v15, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v10, v48

    invoke-virtual {v4, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v15, 0x16

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v4, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x3

    invoke-direct {v15, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    move-object/from16 v5, v33

    invoke-direct {v10, v3, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v5, v27

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0x17

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v4, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v13, 0x6

    move-object/from16 v15, v57

    invoke-direct {v10, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v4, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA1;)V

    invoke-virtual {v4, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    move-object/from16 v10, v46

    move-object/from16 v13, v47

    invoke-static {v0, v4, v10, v13}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    move-object/from16 v27, v15

    const/16 v15, 0x10

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v4, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v33, v5

    const/4 v5, 0x0

    move-object/from16 v13, v50

    move-object/from16 v64, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v64

    invoke-direct {v10, v13, v9, v15, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v4, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v8}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v8}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v8}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v8}, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;-><init>(Z)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_RESUMED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v53

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    invoke-direct {v6, v3, v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v10, 0x13

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v10, "VIDEO_PAUSED"

    const/4 v12, 0x0

    invoke-direct {v6, v3, v10, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v13, v3, v10, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    move-object/from16 v4, v42

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;

    const/4 v12, 0x1

    invoke-direct {v4, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v12, v36

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;-><init>()V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA4;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v4, v3, v10, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x1

    invoke-direct {v4, v3, v10, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v4, v3, v10, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v4, v3, v10, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_PLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v1, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v9, "REVIEW_PLAY"

    const/4 v10, 0x1

    move-object/from16 v12, v62

    invoke-direct {v8, v12, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v9, "SHOULD_EXIT"

    invoke-direct {v8, v12, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v13, "REVIEW_ACCEPT"

    invoke-direct {v8, v3, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_ACCEPT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v1, v6, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v3, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v12, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v8, 0x0

    invoke-direct {v6, v3, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v6, v40

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v3, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v1, v8, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v3, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v12, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v8, v30

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v23, v5

    const/4 v5, 0x1

    invoke-direct {v15, v3, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v15, v12, v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    move-object/from16 v54, v11

    move-object/from16 v11, v39

    invoke-direct {v5, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v5, v26

    invoke-static {v0, v1, v5, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v26, v14

    move-object/from16 v14, v35

    invoke-direct {v5, v3, v14, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v14, v3, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v14, v12, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA0;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v3, v13, v10, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;-><init>()V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v9, v63

    invoke-static {v0, v1, v4, v9}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v12, v3, v13, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v15, 0xc

    invoke-direct {v12, v15, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v10, v61

    invoke-static {v0, v1, v4, v10}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v10, v3, v13, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v12, 0xc

    invoke-direct {v10, v12, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/4 v4, 0x7

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v4, v24

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/16 v5, 0x8

    const/4 v10, 0x1

    invoke-direct {v1, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v13, 0xb

    invoke-direct {v4, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v4, 0x0

    invoke-direct {v1, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v5, v28

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v10, 0xb

    invoke-direct {v5, v10, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TIMER_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v51

    invoke-static {v1, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPrepareRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$CodecVideoPrepareRunnable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v5, v21

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v10, v32

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v13, v22

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    move-object/from16 v4, v59

    invoke-direct {v14, v3, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v14}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    move-object/from16 v57, v9

    move-object/from16 v9, v45

    invoke-direct {v15, v3, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v9, 0x18

    invoke-direct {v1, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v9, v29

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v14, v37

    invoke-virtual {v1, v14}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v15}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v14, v41

    invoke-virtual {v1, v14}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x0

    move-object/from16 v14, v26

    invoke-direct {v9, v3, v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v3, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v9, v31

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v9, 0x5

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v9, v19

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    move-object/from16 v36, v4

    move-object/from16 v4, v18

    invoke-direct {v9, v3, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v1, v12}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v3, v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v4, v54

    invoke-static {v0, v1, v4, v12}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v10, 0x9

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    move-object/from16 v30, v6

    move-object/from16 v6, v55

    invoke-direct {v9, v3, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v9, v49

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    const/4 v9, 0x1

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(Z)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA2;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v9, v34

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v57

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v16, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v4, 0x0

    invoke-direct {v5, v3, v14, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v51

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v5, 0x1

    move-object/from16 v17, v12

    const/4 v12, 0x0

    invoke-direct {v4, v3, v14, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v52

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v4, v3, v6, v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v4, v20

    invoke-static {v0, v1, v13, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v3, v14, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v14, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v6, 0x2

    invoke-direct {v5, v11, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v4, v38

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v5, 0x0

    const/16 v6, 0x13

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v5, v17

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v9, 0x1

    move-object/from16 v10, v36

    invoke-direct {v6, v3, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v6, v54

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v1, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v12, 0x1

    invoke-direct {v10, v3, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v9, 0x18

    invoke-direct {v1, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v9, v29

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v9, v32

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v9, v41

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v10, v30

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v10, v31

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v12, 0x5

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v10, v49

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(Z)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v10, v37

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v13, 0x13

    invoke-direct {v10, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v3, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v12, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-static {v0, v1, v9, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v8, v48

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v9, 0x16

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x3

    invoke-direct {v8, v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v3, v33

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v8, 0x17

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v8, 0x6

    move-object/from16 v9, v27

    invoke-direct {v3, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA1;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v3, v23

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public static getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockMicSettingRunnable;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$LockMicSettingRunnable;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    return-object v1
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getParentState()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getIdleState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->configureCaptureStates(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->VIDEO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method

.method public final getIdleState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 14

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA7;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {p1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_DATA_CLEAR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {p1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STORAGE_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-direct {v10, v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;

    invoke-direct {v10, v9, v1}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;-><init>(ZZ)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v10, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    invoke-direct {v5, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "HISTORY_STATE"

    invoke-direct {v5, v6, v12, v10, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v5, v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v10, 0x2

    invoke-direct {v5, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    invoke-direct {v11, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA2;)V

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRecorderMirrorRunnable;

    invoke-direct {v11, v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRecorderMirrorRunnable;-><init>(Z)V

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v11, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    invoke-direct {v13, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v6, v12, v13, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v1, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->SINGLE_TAP_TIMER:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    invoke-direct {v11, v13, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v11, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v11, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v11, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    invoke-direct {v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    iput-object v11, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v9, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v9, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;

    invoke-direct {v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;-><init>(I)V

    iput-object v11, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v11, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v11, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v9, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v9, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v11, 0x3

    invoke-direct {v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v3, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v9, 0x5

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v3, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP_CLI_DISPLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v3, 0x11

    const/4 v11, 0x1

    invoke-direct {v2, v3, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v2, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_INFO_DIALOG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->HELP_MODE_INFO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getLeftPageShowModeUi()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions(Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v11, 0x6

    invoke-direct {v3, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v3, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_THERMAL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v10, 0x6

    invoke-direct {v3, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoExtMicPlugMicSettingRunnable;-><init>(Z)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v6, v12, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;

    const-string v3, "MODE"

    invoke-direct {v2, v8, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v2, v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/4 v5, 0x7

    invoke-direct {v2, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v6, 0x6

    invoke-direct {v2, v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BEAUTY_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {v1, v2, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->SLIDER_BAR_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v2, v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable$$ExternalSynthetic$IA3;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    invoke-direct {v2, v5}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    return-object p0
.end method

.method public final getParentState()Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 6

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v0, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    return-object p0
.end method

.method public final getParentStateKey()Lcom/motorola/camera/fsm/camera/StateKey;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-object p0
.end method
