.class public final Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mScheduledForRemoval:Z

.field public final mThumbnailFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mScheduledForRemoval:Z

    iput-object p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    return-void
.end method
