.class public final Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;
.super Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final n:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const-string p2, "must have exactly "

    const-string v1, " value parameters"

    invoke-static {p2, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;-><init>(ILjava/lang/String;)V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;->n:I

    return-void

    :cond_0
    const-string p2, "must have at least "

    const-string v1, " value parameter"

    invoke-static {p2, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-le p1, v0, :cond_1

    const-string v1, "s"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;-><init>(ILjava/lang/String;)V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;->n:I

    return-void
.end method


# virtual methods
.method public final check(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Z
    .locals 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;->n:I

    const-string v3, "functionDescriptor"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, p0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
