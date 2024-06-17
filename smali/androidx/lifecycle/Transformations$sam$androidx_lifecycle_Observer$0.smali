.class public final synthetic Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic function:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 1

    iput p1, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    iget p0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of p0, p1, Landroidx/lifecycle/Observer;

    if-eqz p0, :cond_0

    instance-of p0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    check-cast p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    iget-object p0, p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :goto_0
    instance-of p0, p1, Landroidx/lifecycle/Observer;

    if-eqz p0, :cond_1

    instance-of p0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz p0, :cond_1

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    check-cast p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    iget-object p0, p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    iget-object p0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    iget-object p0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
