.class public final Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    iput p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    iput p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    iput p3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    return-void
.end method
