.class public final Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $instanceReceiver:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;->$instanceReceiver:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;->$r8$classId:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;->$instanceReceiver:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    packed-switch v0, :pswitch_data_0

    nop

    :pswitch_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
