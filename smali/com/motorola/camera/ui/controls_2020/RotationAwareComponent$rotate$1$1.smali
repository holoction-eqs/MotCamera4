.class public final Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $it:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $rotation:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$it:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$rotation:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$r8$classId:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$rotation:F

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$it:Ljava/lang/Object;

    const-string v2, "animation"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    return-void

    :goto_1
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
