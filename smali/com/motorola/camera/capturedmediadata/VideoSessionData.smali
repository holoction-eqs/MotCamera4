.class public final Lcom/motorola/camera/capturedmediadata/VideoSessionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCaptureVideoDataList:Ljava/util/ArrayList;

.field public final mMetadata:Landroid/os/Bundle;

.field public mNextCaptureVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

.field public final mSessionTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mCaptureVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mSessionTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mMetadata:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mCaptureVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mSessionTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mMetadata:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mCaptureVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    return-object p0
.end method

.method public final getMetadata()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mMetadata:Landroid/os/Bundle;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoSession{Session video size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mCaptureVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Current Capture Video Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Next capture video Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mNextCaptureVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
