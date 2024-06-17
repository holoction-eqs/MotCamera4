.class public final Lcom/motorola/camera/analytics/ShotToShotEvent$Record;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mEndTime:J

.field public mKpiTime:J

.field public mMcfQueue:I

.field public mMode:I

.field public mModeName:Ljava/lang/String;

.field public mSessionSeqId:J

.field public mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mStartTime:J

    iput-wide v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    iput-wide v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mKpiTime:J

    return-void
.end method
