.class public Lcom/anc/humansdk/fusion/ImageSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anc/humansdk/fusion/ImageSize;->width:I

    iput v0, p0, Lcom/anc/humansdk/fusion/ImageSize;->height:I

    return-void
.end method
