.class public final Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;
.super Lkotlinx/serialization/json/internal/CharArrayPoolBase;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;->$r8$classId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final newInstance()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final resetInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    return-object p1

    :goto_0
    check-cast p1, Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
