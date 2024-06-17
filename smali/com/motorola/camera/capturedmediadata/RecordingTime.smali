.class public final Lcom/motorola/camera/capturedmediadata/RecordingTime;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NANO_TO_MILLI:Ljava/lang/Long;


# instance fields
.field public final NOT_SET:Ljava/lang/Long;

.field public final mCaptureRate:D

.field public mEndTime:J

.field public mPauseCount:I

.field public mPauseDuration:J

.field public mPauseTime:J

.field public mStartTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->NANO_TO_MILLI:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/RecordingTime;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->NOT_SET:Ljava/lang/Long;

    iget-wide v0, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    iget-wide v0, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mCaptureRate:D

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mCaptureRate:D

    iget-wide v0, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iget-wide v0, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    iget-wide v0, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    iget p1, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    iput p1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    return-void
.end method


# virtual methods
.method public final getVideoDuration()Ljava/lang/Long;
    .locals 5

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    iget-object v2, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    iget-wide v2, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final setEndTime(Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iget-object v2, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setResumeTime(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public final setPauseTime(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iget p1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    return-void
.end method

.method public final setResumeTime(Ljava/lang/Long;)V
    .locals 6

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    iget-object p1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordingTime{mStartTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPauseDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPauseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mCaptureRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
