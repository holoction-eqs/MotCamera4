.class public final Lcom/motorola/camera/analytics/ShotToShotEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final FACING:Landroidx/core/text/BidiFormatter$Builder;


# instance fields
.field public final mSessionMap:Landroid/util/LongSparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "FACING"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->FACING:Landroidx/core/text/BidiFormatter$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final addData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6

    check-cast p3, Ljava/lang/Long;

    iget-object v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " using default data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;-><init>()V

    :cond_0
    const-string p0, "SHOTSEQID"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, p0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p0, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mModeName:Ljava/lang/String;

    const-string p3, "MODE"

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mKpiTime:J

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    iget-wide v4, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mStartTime:J

    sub-long/2addr v2, v4

    :goto_0
    const-string p0, "SHOTTIME"

    invoke-virtual {p2, p0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "MCFQUEUE"

    iget p3, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMcfQueue:I

    invoke-virtual {p2, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->FACING:Landroidx/core/text/BidiFormatter$Builder;

    const-string p3, "IS_CLI_DISPLAY"

    invoke-virtual {p1, p3}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget p3, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMode:I

    invoke-static {p3, p1}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(IZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final getEventType()Lcom/motorola/camera/analytics/AnalyticsService$EventType;
    .locals 0

    sget-object p0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->SHOT_TO_SHOT:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    return-object p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.9"

    return-object p0
.end method

.method public final getSessionSeqId(Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)J
    .locals 0

    check-cast p2, Ljava/lang/Long;

    iget-object p0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    iget-wide p0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mSessionSeqId:J

    return-wide p0
.end method
