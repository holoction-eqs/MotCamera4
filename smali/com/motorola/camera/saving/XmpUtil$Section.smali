.class public final Lcom/motorola/camera/saving/XmpUtil$Section;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:[B

.field public isBlob:Z

.field public length:I

.field public marker:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->isBlob:Z

    return-void
.end method
