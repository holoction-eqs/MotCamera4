.class public final Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;


# instance fields
.field public final synthetic val$onRecursiveCall:Lkotlin/jvm/functions/Function1;

.field public final synthetic val$postCompute:Lkotlin/jvm/functions/Function1;


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string v1, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5"

    const/4 v4, 0x0

    if-eq p0, v0, :cond_2

    aput-object v3, v2, v4

    goto :goto_2

    :cond_2
    const-string v5, "value"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    if-eq p0, v0, :cond_3

    const-string v3, "recursionDetected"

    aput-object v3, v2, v4

    goto :goto_3

    :cond_3
    aput-object v3, v2, v4

    :goto_3
    if-eq p0, v0, :cond_4

    goto :goto_4

    :cond_4
    const-string v3, "doPostCompute"

    aput-object v3, v2, v0

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0
.end method

.method public static synthetic $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$storage$LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute(I)V
    .locals 7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v0, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_3

    if-eq p0, v0, :cond_2

    const-string v6, "storageManager"

    aput-object v6, v2, v4

    goto :goto_2

    :cond_2
    aput-object v3, v2, v4

    goto :goto_2

    :cond_3
    const-string v6, "computable"

    aput-object v6, v2, v4

    :goto_2
    if-eq p0, v0, :cond_4

    aput-object v3, v2, v5

    goto :goto_3

    :cond_4
    const-string v3, "invoke"

    aput-object v3, v2, v5

    :goto_3
    if-eq p0, v0, :cond_5

    const-string v3, "<init>"

    aput-object v3, v2, v0

    :cond_5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3;)V
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$2;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->val$onRecursiveCall:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->val$postCompute:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->$$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$storage$LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->$$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$storage$LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final recursionDetected(Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->val$onRecursiveCall:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->recursionDetected(Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method
