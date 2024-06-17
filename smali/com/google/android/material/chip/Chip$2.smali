.class public final Lcom/google/android/material/chip/Chip$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/chip/Chip$2;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    iget p1, p0, Lcom/google/android/material/chip/Chip$2;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Landroid/view/View;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float v5, p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/material/chip/Chip;

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipDrawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    :goto_0
    return-void

    :goto_1
    check-cast p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
