.class public final Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KPackageImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;->this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;->$r8$classId:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;->this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/reflect/KTypeProjection$Companion;->create(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
