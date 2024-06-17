.class public final Landroidx/dynamicanimation/animation/DynamicAnimation$1;
.super Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Landroid/view/View;)F
    .locals 0

    iget p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result p0

    return p0

    .line 2
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result p0

    return p0

    .line 3
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p0

    return p0

    .line 4
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    return p0

    .line 5
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    return p0

    .line 6
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->getValue(Landroid/view/View;)F

    move-result p0

    return p0

    .line 8
    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->getValue(Landroid/view/View;)F

    move-result p0

    return p0

    .line 9
    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->getValue(Landroid/view/View;)F

    move-result p0

    return p0

    .line 10
    :pswitch_3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->getValue(Landroid/view/View;)F

    move-result p0

    return p0

    .line 11
    :pswitch_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->getValue(Landroid/view/View;)F

    move-result p0

    return p0

    .line 12
    :pswitch_5
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->getValue(Landroid/view/View;)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final setValue(Landroid/view/View;F)V
    .locals 0

    iget p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    return-void

    .line 2
    :pswitch_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    return-void

    .line 3
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void

    .line 4
    :pswitch_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 5
    :pswitch_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void

    .line 6
    :pswitch_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Landroid/view/View;F)V

    return-void

    .line 8
    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Landroid/view/View;F)V

    return-void

    .line 9
    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Landroid/view/View;F)V

    return-void

    .line 10
    :pswitch_3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Landroid/view/View;F)V

    return-void

    .line 11
    :pswitch_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Landroid/view/View;F)V

    return-void

    .line 12
    :pswitch_5
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Landroid/view/View;F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
