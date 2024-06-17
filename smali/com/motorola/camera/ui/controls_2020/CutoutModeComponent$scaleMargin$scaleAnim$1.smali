.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic $bottomMarginEnd:I

.field public final synthetic $bottomMarginStart:I

.field public final synthetic $bracketsMargins:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic $leftMarginStart:I

.field public final synthetic $rightMarginStart:I

.field public final synthetic $sidesMarginsEnd:I

.field public final synthetic $topMarginEnd:I

.field public final synthetic $topMarginStart:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;IIIIIIILcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$bracketsMargins:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$bottomMarginStart:I

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$bottomMarginEnd:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$topMarginStart:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$topMarginEnd:I

    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$leftMarginStart:I

    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$sidesMarginsEnd:I

    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$rightMarginStart:I

    iput-object p9, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$bottomMarginEnd:I

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$bottomMarginStart:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$bracketsMargins:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$topMarginEnd:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$topMarginStart:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$sidesMarginsEnd:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$leftMarginStart:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->$rightMarginStart:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr v1, p1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
