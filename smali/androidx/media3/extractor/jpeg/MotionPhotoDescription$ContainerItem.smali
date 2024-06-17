.class public final Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final length:J

.field public final mime:Ljava/lang/String;

.field public final padding:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    iput-wide p1, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    iput-wide p4, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    return-void
.end method
