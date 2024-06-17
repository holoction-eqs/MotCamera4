.class public final Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;
.super Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)V
    .locals 2

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;->$r8$classId:I

    const/4 v0, 0x1

    const-string v1, "delegate"

    if-eq p2, v0, :cond_0

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    return-void

    :cond_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    return-void
.end method


# virtual methods
.method public final isMarkedNullable()Z
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;
    .locals 1

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)V

    return-object p0

    :goto_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
