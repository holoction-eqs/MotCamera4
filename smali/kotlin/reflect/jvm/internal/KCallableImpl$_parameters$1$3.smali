.class public final Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $descriptor:Ljava/lang/Object;

.field public final synthetic $i:I

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->$descriptor:Ljava/lang/Object;

    iput p2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->$i:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$1()V
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->$r8$classId:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->$i:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->$descriptor:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iput v1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->orientation:I

    invoke-static {p0, v1}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->access$changeOrientation(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    sget v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->$r8$clinit:I

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->invoke$1()V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->$descriptor:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->$i:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "descriptor.valueParameters[i]"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;->invoke$1()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
