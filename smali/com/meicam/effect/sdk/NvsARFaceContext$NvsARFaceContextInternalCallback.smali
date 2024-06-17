.class interface abstract Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsARFaceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NvsARFaceContextInternalCallback"
.end annotation


# virtual methods
.method public abstract notifyDetectedAction(J)V
.end method

.method public abstract notifyFaceItemLoadingBegin(Ljava/lang/String;)V
.end method

.method public abstract notifyFaceItemLoadingFailed(Ljava/lang/String;I)V
.end method

.method public abstract notifyFaceItemLoadingFinish()V
.end method

.method public abstract notifyObjectLandmark([FIIJ)V
.end method
