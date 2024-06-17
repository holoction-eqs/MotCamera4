.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent$showDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $autoEnhanceImageClip:Landroid/graphics/drawable/ClipDrawable;

.field public final synthetic $isRtl:I

.field public final synthetic $separatorLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/drawable/ClipDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent$showDialog$2;->$separatorLine:Landroid/view/View;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent$showDialog$2;->$isRtl:I

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent$showDialog$2;->$autoEnhanceImageClip:Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent$showDialog$2;->$isRtl:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v0, p3

    int-to-float p3, v0

    int-to-float v0, p2

    const v1, 0x459c4000    # 5000.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent$showDialog$2;->$separatorLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent$showDialog$2;->$autoEnhanceImageClip:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const-string p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const-string p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
