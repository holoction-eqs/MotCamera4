.class public final Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mImageWriter:Landroid/media/ImageWriter;

.field public final mImageWriterLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriterLock:Ljava/lang/Object;

    return-void
.end method
