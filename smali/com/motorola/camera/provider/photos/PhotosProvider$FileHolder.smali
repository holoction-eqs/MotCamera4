.class public final Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mFile:Ljava/io/File;

.field public final mWritable:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;->mFile:Ljava/io/File;

    iput-boolean p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;->mWritable:Z

    return-void
.end method
