.class public final Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;
.super Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final _type$delegate:Ljava/lang/Object;

.field public final typeParameter:Ljava/lang/Object;


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 9

    const/4 v0, 0x5

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "projection"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    const-string v8, "kotlinTypeRefiner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "type"

    aput-object v8, v5, v7

    :goto_2
    const/4 v7, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v7

    goto :goto_3

    :cond_2
    const-string v6, "getType"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_3
    const-string v6, "getProjectionKind"

    aput-object v6, v5, v7

    :goto_3
    if-eq p0, v3, :cond_5

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    const/4 v3, 0x6

    if-eq p0, v3, :cond_4

    const-string v3, "<init>"

    aput-object v3, v5, v4

    goto :goto_4

    :cond_4
    const-string v3, "refine"

    aput-object v3, v5, v4

    goto :goto_4

    :cond_5
    const-string v3, "replaceType"

    aput-object v3, v5, v4

    :cond_6
    :goto_4
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$r8$classId:I

    const-string v0, "typeParameter"

    .line 1
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->typeParameter:Ljava/lang/Object;

    new-instance p1, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;

    const/16 v0, 0x11

    invoke-direct {p1, p0, v0}, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;-><init>(Ljava/lang/Object;I)V

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->_type$delegate:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$r8$classId:I

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    return-void

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$r8$classId:I

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->typeParameter:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->_type$delegate:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$$$reportNull$$$0(I)V

    throw v1

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$$$reportNull$$$0(I)V

    throw v1
.end method


# virtual methods
.method public final getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0

    :goto_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->typeParameter:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$r8$classId:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->_type$delegate:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p0

    :goto_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isStarProjection()Z
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :goto_0
    if-eqz p1, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->typeParameter:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->_type$delegate:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    return-object v0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
