.class public abstract Landroidx/core/app/JobIntentService$WorkEnqueuer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mHasJobId:Z

.field public mJobId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ensureJobId()V
    .locals 3

    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    const/16 v1, 0x64

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    iput v1, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given job ID 100 is different than previous "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
