.class public abstract Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mActionResource:I

.field public mArrowDirection:I

.field public final mCanRotate:Z

.field public mDismissed:Z

.field public final mHasGradient:Z

.field public mRadius:Ljava/lang/Float;

.field public final mShowCloseIcon:Z

.field public final mSize:Landroid/util/SizeF;

.field public mTextPaddingX:Ljava/lang/Float;

.field public mTextPaddingY:Ljava/lang/Float;

.field public final mTextResource:I

.field public final mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mTextureSize:Lcom/motorola/camera/PreviewSize;

.field public final mTitleResource:I

.field public final mUseDynamicViewSize:Z


# direct methods
.method public constructor <init>(IILandroid/util/SizeF;ZZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mRadius:Ljava/lang/Float;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingY:Ljava/lang/Float;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTitleResource:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextResource:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mActionResource:I

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mSize:Landroid/util/SizeF;

    const/4 p1, 0x4

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    iput-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mHasGradient:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mCanRotate:Z

    iput-boolean p5, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mShowCloseIcon:Z

    iput-boolean p6, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mUseDynamicViewSize:Z

    return-void
.end method

.method public constructor <init>(ILandroid/util/SizeF;)V
    .locals 7

    .line 3
    const v2, 0x7f120111

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;-><init>(IILandroid/util/SizeF;ZZZ)V

    return-void
.end method


# virtual methods
.method public abstract initialize()V
.end method

.method public abstract markDismissed()V
.end method

.method public abstract shouldDismiss(Lcom/motorola/camera/fsm/ChangeEvent;)Z
.end method

.method public shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    if-nez p0, :cond_0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract updateDisplay(ILcom/motorola/camera/ui/widgets/gl/iRenderer;)V
.end method
