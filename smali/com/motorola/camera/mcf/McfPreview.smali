.class public final Lcom/motorola/camera/mcf/McfPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

.field public volatile mIsPreviewOpen:Z

.field public volatile mPreviewFormat:I

.field public volatile mPreviewHeight:I

.field public volatile mPreviewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewWidth:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewHeight:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewFormat:I

    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    return-void
.end method
