.class public final Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFrameCollectionTimeEst:I

.field public mMiscTimeEst:I

.field public mTimeStamp:J

.field public mTotalTimeEst:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTimeStamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mFrameCollectionTimeEst:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mMiscTimeEst:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTotalTimeEst:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfCallbackProcessTimeEstimate: mTimeStamp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameCollectionTimeEst: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mFrameCollectionTimeEst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMiscTimeEst: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mMiscTimeEst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalTimeEst: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTotalTimeEst:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
