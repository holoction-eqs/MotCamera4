.class public Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/effect/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisualSpanSegment"
.end annotation


# instance fields
.field end:I

.field start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;->start:I

    iput p2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;->end:I

    return-void
.end method
