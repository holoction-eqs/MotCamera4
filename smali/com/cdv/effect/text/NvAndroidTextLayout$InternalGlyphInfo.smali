.class Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/effect/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalGlyphInfo"
.end annotation


# instance fields
.field public advance:F

.field public endCharIdx:I

.field public isRtl:Z

.field public paint:Landroid/graphics/Paint;

.field public primaryHorizontal:F

.field public secondaryHorizontal:F

.field public startCharIdx:I

.field public underline:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cdv/effect/text/NvAndroidTextLayout$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;-><init>()V

    return-void
.end method
